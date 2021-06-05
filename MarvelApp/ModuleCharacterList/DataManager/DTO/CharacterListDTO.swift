//
//  CharacterListDTO.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import SDOSAlamofire
import SDOSKeyedCodable

struct CharacterListDTO: GenericDTO {
    var code: Int?
    var status, copyright, attributionText, attributionHTML: String?
    var etag: String?
    var data: DataList?
    
    mutating func map(map: KeyMap) throws {
        try code <-> map["code"]
        try data <<- map["data"]
    }
    
    init(from decoder: Decoder) throws {
        try KeyedDecoder(with: decoder).decode(to: &self)
    }
    
}

// MARK: - DataList
struct DataList: GenericDTO {
    var offset, limit, total, count: Int?
    var results: [CharacterDTO]?
    
    mutating func map(map: KeyMap) throws {
        try offset <-> map["offset"]
        try limit <-> map["limit"]
        try total <-> map["total"]
        try count <-> map["count"]
        try results <<- map["results"]
    }
    
    init(from decoder: Decoder) throws {
        try KeyedDecoder(with: decoder).decode(to: &self)
    }
}

// MARK: - CharacterDTO
struct CharacterDTO: GenericDTO {
    var id: Int?
    var name: String?
    var thumbnail: Thumbnail?
    var resourceURI: String?
    
//    enum CodingKeys: String, CodingKey {
//        case id, name
//        case modified, thumbnail, resourceURI, comics, series, stories, events, urls
//    }
    
    mutating func map(map: KeyMap) throws {
        try id <-> map["id"]
        try name <-> map["name"]
        try thumbnail <<- map["thumbnail"]
        try resourceURI <-> map["resourceURI"]
    }
    
    init(from decoder: Decoder) throws {
        try KeyedDecoder(with: decoder).decode(to: &self)
    }
}


// MARK: - Thumbnail
struct Thumbnail: GenericDTO {
    var path: String?
    var thumbnailExtension: String?
    
    mutating func map(map: KeyMap) throws {
        try path <-> map["path"]
        try thumbnailExtension <-> map["extension"]
    }
    
    init(from decoder: Decoder) throws {
        try KeyedDecoder(with: decoder).decode(to: &self)
    }
}
