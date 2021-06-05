//
//  CharacterDetailWireFrame.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import UIKit

protocol CharacterDetailWireFrameProtocol: class {
    static func createPostDetailModule(forPost post: CharacterBO) -> UIViewController
}

class CharacterDetailWireFrame: CharacterDetailWireFrameProtocol {
    
    class func createPostDetailModule(forPost post: CharacterBO) -> UIViewController {
        
        let viewController = CharacterDetailViewController()
        let presenter: CharacterDetailPresenterProtocol & CharacterDetailInteractorOutputProtocol = CharacterDetailPresenter(characterID: post.id)
        let interactor: CharacterDetailInteractorInputProtocol & CharacterDetailRepositoryOutputProtocol = CharacterDetailInteractor()
        let repository: CharacterDetailRepositoryInputProtocol = CharacterDetailRepository()
        let wireFrame: CharacterDetailWireFrameProtocol = CharacterDetailWireFrame()
        
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.repository = repository
        repository.remoteRequestHandler = interactor

        return viewController
    }

}


