//
//  ContentView.swift
//  TestItAll
//
//  Created by Derek Bronston on 1/11/23.
//

import SwiftUI

struct TestView: View {
    
    @ObservedObject var viewModel = TestViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(viewModel.greeting)
        }
        .padding()
        .onAppear {
            Task {
                viewModel.build()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
