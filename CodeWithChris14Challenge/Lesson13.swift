//
//  Lesson13.swift
//  CodeWithChris14Challenge
//
//  Created by Marcin Jędrzejak on 11/10/2022.
//

import SwiftUI

struct Lesson13: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 20)
            
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Credits: 1000")
                .font(.callout)
            
            Spacer()
            
            Image("apple")
            
            Spacer()
            
            Button("Spin") {
                
            }
            .frame(width: 120, height: 35)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(15.0)
            
            Spacer()
        }
    }
}

struct Lesson13_Previews: PreviewProvider {
    static var previews: some View {
        Lesson13()
    }
}
