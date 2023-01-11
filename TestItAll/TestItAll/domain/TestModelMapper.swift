//
//  TestMapper.swift
//  TestItAll
//
//  Created by Derek Bronston on 1/11/23.
//

import Foundation

protocol TestModelMapperProtocol {
    func mapTestModel(testEntity: TestEntity) -> TestModel
}

struct TestModelMapper: TestModelMapperProtocol {
    func mapTestModel(testEntity: TestEntity) -> TestModel {
        let model = TestModel(foo: testEntity.fooey)
        return model
    }
}
