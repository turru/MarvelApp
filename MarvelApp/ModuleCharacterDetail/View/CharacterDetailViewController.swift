//
//  CharacterDetailViewController.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import UIKit
import PKHUD

protocol CharacterDetailViewControllerProtocol: class {
    var presenter: CharacterDetailPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    func showPostDetail(detailVO: CharacterDetailVO)
    func showError()
    func showLoading()
    func hideLoading()
}

class CharacterDetailViewController: BaseViewController {

    var presenter: CharacterDetailPresenterProtocol?
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var detailVO: CharacterDetailVO?

    //MARK: - Init
    
    required override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Life cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        self.loadUI()
    }
    
    private func loadUI() {
        titleLabel.textColor = .blue
    }

}


extension CharacterDetailViewController: CharacterDetailViewControllerProtocol {
   
    func showError() {
        HUD.flash(.label("Error to load character"), delay: 2.0)
    }
    
    func showLoading() {
        HUD.show(.progress)
    }
    
    func hideLoading() {
        HUD.hide()
    }
    
    func showPostDetail(detailVO: CharacterDetailVO) {
        self.detailVO = detailVO
        self.titleLabel?.text = detailVO.name
        self.descriptionLabel?.text = detailVO.description
        var urlAndExtensionTmp = ""
        guard let url = detailVO.thumbnailPath, let urlExtension = detailVO.thumbnailExtension else {
            printDebug("No url for image found")
            return
        }
        urlAndExtensionTmp = url + "." + urlExtension
        guard let urlForRequest = URL(string: urlAndExtensionTmp) else {
            printDebug("No url found")
            return
        }
        
        
        let placeholderImage = UIImage(named: "placeholder")
        postImageView?.af.setImage(withURL: urlForRequest, placeholderImage: placeholderImage)
    }
    
}
