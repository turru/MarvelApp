//
//  CharacterDTO.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import Foundation

extension CharacterDTO {
    
    func toBO() -> CharacterBO {
        var characterBO = CharacterBO()
        characterBO.id = self.id
        characterBO.name = self.name
        characterBO.thumbnailExtension = self.thumbnail?.thumbnailExtension
        characterBO.thumbnailPath = self.thumbnail?.path
        return characterBO
    }
    
}
