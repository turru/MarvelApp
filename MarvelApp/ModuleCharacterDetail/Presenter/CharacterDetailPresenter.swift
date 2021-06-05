//
//  CharacterDetailPresenter.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

protocol CharacterDetailPresenterProtocol: class {
    var view: CharacterDetailViewControllerProtocol? { get set }
    var interactor: CharacterDetailInteractorInputProtocol? { get set }
    var wireFrame: CharacterDetailWireFrameProtocol? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad()

}

class CharacterDetailPresenter: BasePresenter {
    weak var view: CharacterDetailViewControllerProtocol?
    var interactor: CharacterDetailInteractorInputProtocol?
    var wireFrame: CharacterDetailWireFrameProtocol?
    var characterDetailBO: CharacterDetailBO?
    var characterID: Int?
    
    required init(characterID: Int?) {
        self.characterID = characterID
        super.init()
    }
}


extension CharacterDetailPresenter: CharacterDetailPresenterProtocol {

    func viewDidLoad() {
        view?.showLoading()
        
        if let id = self.characterID {
            interactor?.retrieveDataDetail(characterID: "\(id)")
        } else {
            interactor?.retrieveDataDetail(characterID: "")
        }
    }
    
}


extension CharacterDetailPresenter: CharacterDetailInteractorOutputProtocol {
    func didRetrievePosts(_ detail: CharacterDetailBO) {
        
        view?.hideLoading()
        self.characterDetailBO = detail
        let characterVO = CharacterDetailVO(with: detail)
        view?.showPostDetail(detailVO: characterVO)
    }
    
    func onError() {
        view?.hideLoading()
        view?.showError()
    }
    
}
