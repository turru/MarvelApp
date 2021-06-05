//
//  CharacterDetailMapper.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 3/6/21.
//

import Foundation

extension CharacterDetailDTO {
    
    func toBO() -> CharacterDetailBO {
        var characterBO = CharacterDetailBO()
        characterBO.id = self.id
        characterBO.name = self.name
        characterBO.description = self.description
        characterBO.thumbnailExtension = self.thumbnail?.thumbnailExtension
        characterBO.thumbnailPath = self.thumbnail?.path
        return characterBO
    }
    
}
