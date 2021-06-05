//
//  CharacterDetailDTO.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 3/6/21.
//

import SDOSAlamofire
import SDOSKeyedCodable

struct CharacterDetailResultDTO: GenericDTO {
    var code: Int?
//    var status, copyright, attributionText, attributionHTML: String?
//    var etag: String?
    var data: DataDetail?

    mutating func map(map: KeyMap) throws {
        try code <-> map["code"]
        try data <<- map["data"]
    }
    
    init(from decoder: Decoder) throws {
        try KeyedDecoder(with: decoder).decode(to: &self)
    }
    
}

// MARK: - DataDetail
struct DataDetail: GenericDTO {
    var offset, limit, total, count: Int?
    var results: [CharacterDetailDTO]?
    
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

// MARK: - Result
struct CharacterDetailDTO: GenericDTO {
    var id: Int?
    var name, description: String?
    var thumbnail: Thumbnail?
    var resourceURI: String?
    
//    enum CodingKeys: String, CodingKey {
//        case id, name
//        case modified, thumbnail, resourceURI, comics, series, stories, events, urls
//    }
    
    mutating func map(map: KeyMap) throws {
        try id <-> map["id"]
        try name <-> map["name"]
        try description <-> map["description"]
        try thumbnail <<- map["thumbnail"]
        try resourceURI <-> map["resourceURI"]
    }
    
    init(from decoder: Decoder) throws {
        try KeyedDecoder(with: decoder).decode(to: &self)
    }
}
