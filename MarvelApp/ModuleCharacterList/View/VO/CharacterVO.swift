//
//  CharacterVO.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import Foundation

class CharacterVO {
    var id: Int?
    var name: String?
    var thumbnailPath: String?
    var thumbnailExtension: String?
    
    public init(with itemBO: CharacterBO) {
        self.id = itemBO.id
        self.name = itemBO.name
        self.thumbnailPath = itemBO.thumbnailPath
        self.thumbnailExtension = itemBO.thumbnailExtension
    }
}
