//
//  demoframeworkTests.swift
//  demoframeworkTests
//
//  Created by xiaomin he on 2018/12/6.
//  Copyright © 2018年 xiaomin he. All rights reserved.
//

import XCTest
@testable import demoframework

class demoframeworkTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssert(say(name: "demoframeworrk") == "Hello  "+"demoframeworrk" )
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
