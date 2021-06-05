//
//  CharacterListPresenter.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

protocol CharacterListPresenterProtocol: class {
    var view: CharacterListViewControllerProtocol? { get set }
    var interactor: CharacterListInteractorInputProtocol? { get set }
    var wireFrame: CharacterListWireFrameProtocol? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()
    func showPostDetail(forPost post: Int)
    func getMoreCharactersWithPagination()
}

class CharacterListPresenter: CharacterListPresenterProtocol {

    // protocol
    weak var view: CharacterListViewControllerProtocol?
    var interactor: CharacterListInteractorInputProtocol?
    var wireFrame: CharacterListWireFrameProtocol?
    fileprivate var page = Int(0)

    var characters:[CharacterBO] = []
    
    func viewDidLoad() {
        view?.showLoading()
        self.loadinitialCharacters()
    }
    
    func showPostDetail(forPost index: Int) {
        guard let view = self.view else {
            printDebug("No view found")
            return
        }
        wireFrame?.presentPostDetailScreen(from: view, forPost: self.characters[index])
    }

    func loadinitialCharacters() {
        interactor?.retrieveDataList(page: self.page)
    }
    
    func getMoreCharactersWithPagination() {
        self.page += 1
        self.interactor?.retrieveDataList(page: self.page)
    }
    
}

extension CharacterListPresenter: CharacterListInteractorOutputProtocol {
    
    func didRetrievePosts(_ posts: [CharacterBO]) {
        
        view?.hideLoading()
        self.characters.append(contentsOf: posts)
        let voConvert = self.characters.map {CharacterVO(with: $0)}
        
        view?.showPosts(with: voConvert)
    }
    
    func onError() {
        view?.hideLoading()
        view?.showError()
    }
    
}

