//
//  CharacterDetailInteractorOutputProtocol.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 3/6/21.
//

import PromiseKit


protocol CharacterDetailInteractorOutputProtocol: class {
    // INTERACTOR -> PRESENTER
    func didRetrievePosts(_ posts: CharacterDetailBO)
    func onError()
}

protocol CharacterDetailInteractorInputProtocol: class {
    var presenter: CharacterDetailInteractorOutputProtocol? { get set }
    var repository: CharacterDetailRepositoryInputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func retrieveDataDetail(characterID: String)
}

class CharacterDetailInteractor: CharacterDetailInteractorInputProtocol {
    
    weak var presenter: CharacterDetailInteractorOutputProtocol?
    var repository: CharacterDetailRepositoryInputProtocol?
    
    func retrieveDataDetail(characterID: String)  {

        firstly { [weak self] () -> Promise<CharacterDetailBO> in
            guard let self = self else { throw PMKError.cancelled }
            guard let repository = self.repository else {
                throw PMKError.cancelled
            }

            return repository.retrieveDataDetail(characterID: characterID)
        }.done { [weak self] characters in
            guard let self = self else { throw PMKError.cancelled }
            self.onPostsRetrieved(characters)
        }.catch { error in
            printDebug(error.localizedDescription)

        }

    }
        
}

extension CharacterDetailInteractor: CharacterDetailRepositoryOutputProtocol {

    func onPostsRetrieved(_ posts: CharacterDetailBO) {
        presenter?.didRetrievePosts(posts)
    }
    
    func onError() {
        presenter?.onError()
    }
    
}
