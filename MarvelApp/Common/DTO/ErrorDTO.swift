//
//  ErrorDTO.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import SDOSAlamofire
import SDOSKeyedCodable
import Alamofire

struct ErrorDTO: GenericErrorDTO {
    var error: String?
    var errorDescription: String?
    
    init(error: String?, errorDescription: String?) {
        self.error = error
        self.errorDescription = errorDescription
    }
    
    mutating func map(map: KeyMap) throws {
        try error <<- map["error"]
        try errorDescription <<- map["message"]
    }
    
    init(from decoder: Decoder) throws {
        try KeyedDecoder(with: decoder).decode(to: &self)
    }
}
