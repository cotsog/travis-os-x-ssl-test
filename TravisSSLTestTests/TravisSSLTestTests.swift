//
//  TravisSSLTestTests.swift
//  TravisSSLTestTests
//
//  Created by Dominic Jodoin on 2016-03-07.
//  Copyright © 2016 Dominic Jodoin. All rights reserved.
//

import XCTest
import Alamofire
@testable import TravisSSLTest

class TravisSSLTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let timeout: NSTimeInterval = 30.0
        let URLString = "https://mobile.validic.com:443/"
        let expectation = expectationWithDescription("GET request should succeed: \(URLString)")
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        Alamofire.request(.GET, URLString)
            .response { request, response, data, error in
                print(request)
                print(response)
                print(data)
                print(error)
                expectation.fulfill()
        }
        
        waitForExpectationsWithTimeout(timeout, handler: nil)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
