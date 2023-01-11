//
//  TestItAllTests.swift
//  TestItAllTests
//
//  Created by Derek Bronston on 1/11/23.
//

import XCTest
@testable import TestItAll

final class TestViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testBuild() {
        // SET UP
        let mock = MockTestUseCase()
        let sut = TestViewModel(useCase: mock)
        
        // TEST 
        sut.build()
        XCTAssertEqual(sut.greeting, "test string")
    }
}

