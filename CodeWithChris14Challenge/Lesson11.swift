//
//  Lesson11.swift
//  CodeWithChris14Challenge
//
//  Created by Marcin Jędrzejak on 10/10/2022.
//

import SwiftUI

struct Lesson11: View {
    
    @State private var calculation = 0
    
    var body: some View {
        
        VStack {
            
            Text(String(calculation))
                .padding()
            
            Button("IncreaseButton") {
                calculation += 2
            }
            .padding()
            
            Button("MultiplyButton") {
                calculation *= 2
            }
            .padding()

        }
    }
}

struct Lesson_11_Previews: PreviewProvider {
    static var previews: some View {
        Lesson11()
    }
}
