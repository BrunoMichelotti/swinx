//
//  SquadViewModelTests.swift
//  SwinxTests
//
//  Created by Pedro Spim on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import XCTest
@testable import Swinx

class SquadViewModelTests: XCTestCase {

    var sut = SquadViewModel()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        XCTAssert(sut.fetchSquad() != nil)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
