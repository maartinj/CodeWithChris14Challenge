//
//  Lesson12.swift
//  CodeWithChris14Challenge
//
//  Created by Marcin Jędrzejak on 11/10/2022.
//

import SwiftUI

struct Lesson12: View {
    
    @State private var calculateNumber = 0
    @State private var shouldDecrease = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text(String(calculateNumber))
                .font(.largeTitle)
            
            Button("Tap me") {
                if shouldDecrease == false  {
                    increase()
                } else {
                    decrease()
                }
                
                if calculateNumber > 50 {
                    shouldDecrease = true
                } else if calculateNumber < 0 {
                    shouldDecrease = false
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
    
    func increase() {
        
        let num = Int.random(in: 1...10)
        
        calculateNumber += num
    }
    
    func decrease() {
        
        let num = Int.random(in: 1...10)
        
        calculateNumber -= num
    }
}

struct Lesson12_Previews: PreviewProvider {
    static var previews: some View {
        Lesson12()
    }
}
