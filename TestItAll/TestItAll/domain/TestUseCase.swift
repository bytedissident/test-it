//
//  TestUseCase.swift
//  TestItAll
//
//  Created by Derek Bronston on 1/11/23.
//

import Foundation

protocol TestUseCaseProtocol {
    func execute() -> TestModel
}

struct TestUseCase: TestUseCaseProtocol {
    
    let repo: TestRepositoryProtocol
    let mapper: TestModelMapperProtocol
    
    init(repo: TestRepositoryProtocol = TestRepository(), mapper: TestModelMapperProtocol = TestModelMapper()) {
        self.repo = repo
        self.mapper = mapper
    }
    
    func execute() -> TestModel {
        let entity = repo.getTest()
        return mapper.mapTestModel(testEntity: entity)
    }
}
