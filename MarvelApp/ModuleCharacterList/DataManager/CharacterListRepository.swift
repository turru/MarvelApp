//
//  CharacterListRepository.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//


import Foundation
import SDOSAlamofire
import SDOSKeyedCodable
import Alamofire
import AlamofireObjectMapper
import PromiseKit

protocol CharacterListRepositoryInputProtocol: class {
    var remoteRequestHandler: CharacterListRepositoryOutputProtocol? { get set }
    
    // INTERACTOR -> REMOTEDATAMANAGER
    func retrieveDataList(page: Int) -> Promise<[CharacterBO]>
}

protocol CharacterListRepositoryOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
    func onPostsRetrieved(_ posts: [CharacterBO])
    func onError()
}

class CharacterListRepository:CharacterListRepositoryInputProtocol {

    var remoteRequestHandler: CharacterListRepositoryOutputProtocol?
    
    func retrieveDataList(page: Int) -> Promise<[CharacterBO]> {
        
        let ts = String(Date().timeIntervalSince1970)
        let urlParams = [
            "ts" : ts,
            "hash" : MD5.MD5Hex(data: MD5.MD5(string: ts + Constants.privateKey + Constants.publicKey)).lowercased(),
            "apikey" : Constants.publicKey,
            "limit" : String(Constants.limit),
            "offset" : String(page * Constants.limit)
        ]
        let url = Constants.basePath + Constants.charactersPath
        
        let responseSerializer = SDOSJSONResponseSerializer<CharacterListDTO, ErrorDTO>()

        let request = AF.request(url,
                                 method: .get,
                                 parameters: urlParams).validate().validate(contentType: [Constants.application])
        
        return Promise<CharacterListDTO> { seal in
            request.responseSDOSDecodable(responseSerializer: responseSerializer) { (dataResponse: AFDataResponse<CharacterListDTO>) in
                switch dataResponse.result {
                case .success:
                    if let data = dataResponse.value{
                        seal.fulfill(data)
                    } else {
                        seal.reject(PMKError.emptySequence)
                    }
                case .failure(let error):
                    printDebug(error.localizedDescription)
                    seal.reject(error)
                }
            }
        }.map { list -> [CharacterBO] in
            if let list = list.data?.results {
                return list.map{$0.toBO()}

            } else {
                throw PMKError.badInput
            }
        }
        
    }
    
        
}
