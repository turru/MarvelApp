//
//  CharacterListWireFrame.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import UIKit

protocol CharacterListWireFrameProtocol: class {
    static func createPostListModule() -> UIViewController
    // PRESENTER -> WIREFRAME
    func presentPostDetailScreen(from view: CharacterListViewControllerProtocol, forPost post: CharacterBO)
}

class CharacterListWireFrame: CharacterListWireFrameProtocol {
    
    class func createPostListModule() -> UIViewController {
        let navController = CharacterListViewController()
        let presenter: CharacterListPresenterProtocol & CharacterListInteractorOutputProtocol = CharacterListPresenter()
        let interactor: CharacterListInteractorInputProtocol & CharacterListRepositoryOutputProtocol = CharacterListInteractor()
        let repository: CharacterListRepositoryInputProtocol = CharacterListRepository()
        let wireFrame: CharacterListWireFrameProtocol = CharacterListWireFrame()
        
        navController.presenter = presenter
        presenter.view = navController
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.repository = repository
        repository.remoteRequestHandler = interactor
        
        return navController
    }

    func presentPostDetailScreen(from view: CharacterListViewControllerProtocol, forPost post: CharacterBO) {
        let postDetailViewController = CharacterDetailWireFrame.createPostDetailModule(forPost: post)
   
        if let sourceView = view as? UIViewController {
           sourceView.navigationController?.pushViewController(postDetailViewController, animated: true)
        }
    }
    
}
