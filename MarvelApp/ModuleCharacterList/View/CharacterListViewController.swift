//
//  CharacterListViewController.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import UIKit
import PKHUD

protocol CharacterListViewControllerProtocol: class {
    var presenter: CharacterListPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    func showPosts(with posts: [CharacterVO])
    func showError()
    func showLoading()
    func hideLoading()
}

class CharacterListViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    var presenter: CharacterListPresenterProtocol?

    var postList: [CharacterVO] = []
    fileprivate let rowForPagination = Int(10)

    //MARK: - Init
    
    required override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        self.loadUI()
    }
    
    // TODO hacerla como protocolo y llamadrlo desde viewDidLoad del presenter
    func loadUI() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()

        
        let nibCell = UINib.init(nibName: String(describing: CharacterTableViewCell.self), bundle: nil)
        self.tableView.register(nibCell, forCellReuseIdentifier: String(describing: CharacterTableViewCell.self))
    }

}



extension CharacterListViewController: CharacterListViewControllerProtocol {
    
    func showPosts(with posts: [CharacterVO]) {
        postList = posts
        tableView.reloadData()
    }
    
    func showError() {
        HUD.flash(.label("Internet not connected"), delay: 2.0)
    }
    
    func showLoading() {
        HUD.show(.progress)
    }
    
    func hideLoading() {
        HUD.hide()
    }
    
}

extension CharacterListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CharacterTableViewCell.self),
                                                       for: indexPath) as? CharacterTableViewCell else {
            return CharacterTableViewCell()
        }
        
        let post = postList[indexPath.row]
        cell.LoadCell(forPost: post)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showPostDetail(forPost: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == (self.postList.count - self.rowForPagination){
          self.presenter?.getMoreCharactersWithPagination()
        }
    }
    
}
