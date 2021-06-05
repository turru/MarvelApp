//
//  TableViewCell.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import UIKit
import AlamofireImage

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func LoadCell(forPost post: CharacterVO) {
        self.selectionStyle = .none
        titleLabel?.text = post.name
        var urlAndExtensionTmp = ""
        guard let url = post.thumbnailPath, let urlExtension = post.thumbnailExtension else {
            printDebug("No url for image found")
            return
        }
        
        urlAndExtensionTmp = url + "." + urlExtension
        
        guard let urlForRequest = URL(string: urlAndExtensionTmp) else {
            printDebug("No url found")
            return
        }

        let placeholderImage = UIImage(named: "placeholder")
        postImageView.af.setImage(withURL: urlForRequest, placeholderImage: placeholderImage)
    }
    
}
