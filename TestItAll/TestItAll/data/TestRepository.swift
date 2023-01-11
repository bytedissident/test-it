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
    
    let api: TestAPIInterfaceProtocol
    
    init(api: TestAPIInterfaceProtocol = TestAPIInterface()) {
        self.api = api
    }
    
    func getTest() -> TestEntity {
        let data = api.get()
        let decoder = JSONDecoder()
        let testEntity: TestEntity? = try? decoder.decode(TestEntity.self, from: data)
        return testEntity ?? TestEntity(fooey: "")
    }
}
