//
//  TestApiInterface.swift
//  TestItAll
//
//  Created by Derek Bronston on 1/11/23.
//

import Foundation

protocol TestAPIInterfaceProtocol {
    func get() -> Data
}

struct TestAPIInterface: TestAPIInterfaceProtocol {
    
    func get() -> Data {
        guard let data = "{\"fooey\": \"hello world!\"}".data(using: .utf8) else {
            return Data()
        }
        return data
    }
}
