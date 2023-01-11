//
//  TestRepository.swift
//  TestItAll
//
//  Created by Derek Bronston on 1/11/23.
//

import Foundation

protocol TestRepositoryProtocol {
    func getTest() -> TestEntity
}

struct TestRepository: TestRepositoryProtocol {
    
    func getTest() -> TestEntity {
        return TestEntity(fooey: "hello world")
    }
}
