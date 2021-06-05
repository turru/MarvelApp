//
//  EnvironmentConfigure.swift
//  MarvelApp
//
//  Created by Francisco José González Egea on 5/6/21.
//

import Foundation
import SDOSEnvironment


@objc class EnvironmentConfigure: NSObject {
    
    // MARK: Singleton
    @objc static let shared = EnvironmentConfigure()
    
    private override init() {
        SDOSEnvironment.configure(activeLogging: true)
    }
    
    func getWSUrl()->String {
        return Environment.wsUrl
    }
    
    func getPrivateKey()->String {
        return Environment.privateKey
    }

    func getPublicKey()->String {
        return Environment.publicKey
    }

}
