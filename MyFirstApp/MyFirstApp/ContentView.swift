//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Takeyuki.Adachi on 2025/05/19.
//

import SwiftUI

struct ContentView: View {
    @State var outputText = "Hello, world!"
    
    var body: some View {
        VStack {
            Text(outputText)
                .font(.largeTitle)
            Button("Switch Button") {
                outputText = "Hi, Swift!"
            }
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
