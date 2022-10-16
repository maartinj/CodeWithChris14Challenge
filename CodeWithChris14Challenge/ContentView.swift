//
//  ContentView.swift
//  CodeWithChris14Challenge
//
//  Created by Marcin Jędrzejak on 30/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(10.0)
                .padding()
                .background(Color.blue)
                .cornerRadius(10.0)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
