//
//  ReportTests.swift
//  MoreCoreTests
//
//  Created by Diler Barbosa on 07/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import XCTest
import ObjectMapper
@testable import MoreCore

class ReportTests: XCTestCase {
    
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testConnection() {
        
        let promise = expectation(description: "Report loaded!")
        
        _ = ReportData.get(1).then { _reportData -> Void in
            XCTAssertEqual(_reportData.report.id, 1)
            promise.fulfill()
        }
        
        waitForExpectations(timeout: 10, handler: nil)
        
    }
    
    func testDictionaryConversionToLegatoObject() {

        let promise = expectation(description: "Report loaded!")

        _ = ReportData.get(1).then { _reportData -> Void in

            _ = ConvertDictionary(_reportData.reportData, withStructures : _reportData.structures).inToASeriesObject()

            promise.fulfill()
        }

        waitForExpectations(timeout: 10, handler: nil)
    }
    
    
}
