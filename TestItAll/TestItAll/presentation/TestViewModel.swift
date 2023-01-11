//
//  TestViewModel.swift
//  TestItAll
//
//  Created by Derek Bronston on 1/11/23.
//

import Combine
import SwiftUI

protocol TestViewModelProtocol: ObservableObject {
    var greeting: String { get }
    func build()
}

class TestViewModel: TestViewModelProtocol {

    let useCase: TestUseCaseProtocol
    @Published var greeting: String = ""
    
    init(useCase: TestUseCaseProtocol = TestUseCase() ) {
        self.useCase = useCase
    }
    
    func build() {
        let model = useCase.execute()
        greeting = model.foo
    }
}


