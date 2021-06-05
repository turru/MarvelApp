//
//  CharacterDetailVO.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 3/6/21.
//

import Foundation


class CharacterDetailVO {
    var id: Int?
    var name: String?
    var description: String?
    var thumbnailPath: String?
    var thumbnailExtension: String?
    
    public init(with itemBO: CharacterDetailBO) {
        self.id = itemBO.id
        self.name = itemBO.name
        self.description = itemBO.description
        self.thumbnailPath = itemBO.thumbnailPath
        self.thumbnailExtension = itemBO.thumbnailExtension
    }
}

