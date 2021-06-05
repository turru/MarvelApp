//
//  Constants.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 29/5/21.
//

import Foundation

struct Constants {
    
    static let basePath = EnvironmentConfigure.shared.getWSUrl()
    static let charactersPath = "/v1/public/characters"
    static let privateKey = EnvironmentConfigure.shared.getPrivateKey()
    static let publicKey = EnvironmentConfigure.shared.getPublicKey()
    static let limit = 50
    static let application = "application/json"
    static let data = "data"
    static let results = "results"
    
}
