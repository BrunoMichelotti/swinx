//
//  BaseViewTests.swift
//  SwinxTests
//
//  Created by Pedro Spim on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import XCTest
@testable import Swinx

class BaseViewTests: XCTestCase {
    
    var sut = BaseView()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        sut.tableView?.reloadData()
        sut.setup(title: "", description: "", subTitle: "", subDescription: "", list: "")
        XCTAssert(sut.titleLabel?.text == "")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
