//
//  CharacterListInteractor.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import PromiseKit


protocol CharacterListInteractorOutputProtocol: class {
    // INTERACTOR -> PRESENTER
    func didRetrievePosts(_ posts: [CharacterBO])
    func onError()
}

protocol CharacterListInteractorInputProtocol: class {
    var presenter: CharacterListInteractorOutputProtocol? { get set }
    var repository: CharacterListRepositoryInputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func retrieveDataList(page: Int)
}

class CharacterListInteractor: CharacterListInteractorInputProtocol {
    
    weak var presenter: CharacterListInteractorOutputProtocol?
    var repository: CharacterListRepositoryInputProtocol?
    
    func retrieveDataList(page: Int)  {
        
        firstly { [weak self] () -> Promise<[CharacterBO]> in
            guard let self = self else { throw PMKError.cancelled }
            guard let repository = self.repository else {
                throw PMKError.cancelled
            }
            
            return repository.retrieveDataList(page: page)
        }.done { [weak self] characters in
            guard let self = self else { throw PMKError.cancelled }
            self.onPostsRetrieved(characters)
        }.catch { error in
            printDebug(error.localizedDescription)

        }
        
    }
        
}

extension CharacterListInteractor: CharacterListRepositoryOutputProtocol {
    
    func onPostsRetrieved(_ posts: [CharacterBO]) {
        presenter?.didRetrievePosts(posts)
    }
    
    func onError() {
        presenter?.onError()
    }
    
}
