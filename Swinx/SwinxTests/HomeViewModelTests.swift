//
//  HomeViewModelTests.swift
//  SwinxTests
//
//  Created by Pedro Spim on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import XCTest
@testable import Swinx

class HomeViewModelTests: XCTestCase {
    
    var sut : HomeViewController = HomeViewController()
    var label = UILabelPadding()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHomeViewModel() throws {
        XCTAssert(sut.viewModel.categories == ["Squad","Rts","Leads"])
    }
    
    func testCollectionView() throws {
        XCTAssert(sut.viewModel != nil)
    }
    
    func testLabel() throws {
        label.drawText(in: CGRect(x: 0, y: 0, width: 0, height: 0))
        XCTAssert(label.intrinsicContentSize != CGSize(width: 0, height: 0)) 
        XCTAssert(label.padding.bottom != 0.0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
