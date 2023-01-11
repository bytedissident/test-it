//
//  MockTestUseCase.swift
//  TestItAllTests
//
//  Created by Derek Bronston on 1/11/23.
//

import Foundation
@testable import TestItAll

struct MockTestUseCase: TestUseCaseProtocol {

    
    func execute() -> TestModel {
        return TestModel(foo: "test string")
    }
}
