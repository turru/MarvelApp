//
//  MarvelAppUnitTests.swift
//  MarvelAppUnitTests
//
//  Created by Francisco José González Egea on 3/6/21.
//

import XCTest
import Foundation
import PromiseKit
import Cuckoo
import Nimble
@testable import MarvelApp

class MarvelAppUnitTests: XCTestCase {
    
    var repository: CharacterListRepository!
    
    override func setUpWithError() throws {
        self.repository = CharacterListRepository()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBaseUrlPathSuccess() {
        expect(Constants.basePath).to(equal("https://gateway.marvel.com"))
    }
    

    // Retrieve characgters from Marvel server
    func testRetrieveList () {
        let exp: XCTestExpectation = self.expectation(description: "Retrieve characters from server")
        
        self.repository.retrieveDataList(page: 0).done{ characters in
            XCTAssertTrue(characters.count > 0)
            exp.fulfill()
        }.catch { error in
            XCTAssertNil(error)
        }
        
        self.waitForExpectations(timeout: 10)
    }
    
}
