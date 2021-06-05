//
//  CharacterDetailRepository.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 3/6/21.
//

import Foundation
import SDOSAlamofire
import SDOSKeyedCodable
import Alamofire
import AlamofireObjectMapper
import PromiseKit

protocol CharacterDetailRepositoryInputProtocol: class {
    var remoteRequestHandler: CharacterDetailRepositoryOutputProtocol? { get set }
    
    // INTERACTOR -> REMOTEDATAMANAGER
    func retrieveDataDetail(characterID: String) -> Promise<CharacterDetailBO>
}

protocol CharacterDetailRepositoryOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
    func onPostsRetrieved(_ posts: CharacterDetailBO)
    func onError()
}

class CharacterDetailRepository:CharacterDetailRepositoryInputProtocol {

    var remoteRequestHandler: CharacterDetailRepositoryOutputProtocol?
    
    func retrieveDataDetail(characterID: String) -> Promise<CharacterDetailBO> {
        
        let ts = String(Date().timeIntervalSince1970)
        let urlParams = [
            "ts" : ts,
            "hash" : MD5.MD5Hex(data: MD5.MD5(string: ts + Constants.privateKey + Constants.publicKey)).lowercased(),
            "apikey" : Constants.publicKey,
            "limit" : String(Constants.limit),
//            "offset" : String(page * Constants.limit)
        ]
        let url = Constants.basePath + Constants.charactersPath + "/\(characterID)"
        
        let responseSerializer = SDOSJSONResponseSerializer<CharacterDetailResultDTO, ErrorDTO>()

        let request = AF.request(url,
                                 method: .get,
                                 parameters: urlParams).validate().validate(contentType: [Constants.application])
        
        return Promise<CharacterDetailResultDTO> { seal in
            request.responseSDOSDecodable(responseSerializer: responseSerializer) { (dataResponse: AFDataResponse<CharacterDetailResultDTO>) in
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
        }.map { details -> CharacterDetailBO in
            if let details = details.data?.results, let detail = details.first {
                return detail.toBO()
            } else {
                throw PMKError.badInput
            }
        }
        
    }
    
        
}
