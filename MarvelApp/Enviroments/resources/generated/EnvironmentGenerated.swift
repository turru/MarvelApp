//  This is a generated file, do not edit!
//  EnvironmentGenerated.swift
//
//  Created by SDOS
//

import Foundation
import SDOSEnvironment

/// This Environment is generated and contains static references to 3 variables
/// Reference file: /MarvelApp/Enviroments/resources/Environments.plist
struct Environment {
	private init() { }
	/// Variable reference: privateKey
	static var privateKey: String { return SDOSEnvironment.getValue(key: "privateKey") }
	/// Variable reference: publicKey
	static var publicKey: String { return SDOSEnvironment.getValue(key: "publicKey") }
	/// Variable reference: wsUrl
	static var wsUrl: String { return SDOSEnvironment.getValue(key: "wsUrl") }
}