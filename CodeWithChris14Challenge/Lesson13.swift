//
//  Lesson13.swift
//  CodeWithChris14Challenge
//
//  Created by Marcin Jędrzejak on 11/10/2022.
//

import SwiftUI

struct Lesson13: View {
    @State private var appleCard = "image1"
    @State private var cherryCard = "image2"
    @State private var starCard = "image3"
    @State private var creditsScore = 1000
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 20)
            
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Credits: \(creditsScore)")
                .font(.callout)
            
            Spacer()
            
            HStack {
                Image(String(appleCard))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .animation(.default, value: appleCard)
                Image(String(cherryCard))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .animation(.default, value: cherryCard)
                Image(String(starCard))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .animation(.default, value: starCard)
            }
            .padding()
            
            Spacer()
            
            Button("Spin") {
                
                // Generate a random number between 1 and 3
                let appleNumber = Int.random(in: 1...3)
                let cherryNumber = Int.random(in: 1...3)
                let starNumber = Int.random(in: 1...3)
                
                // Update the images
                appleCard = "image" + String(appleNumber)
                cherryCard = "image" + String(cherryNumber)
                starCard = "image" + String(starNumber)
                
                // Update the credits
                if appleCard == cherryCard {
                    if appleCard == starCard {
                        if cherryCard == starCard {
                            creditsScore += 30
                        } else {
                            creditsScore -= 5
                        }
                    } else {
                        creditsScore -= 5
                    }
                } else {
                    creditsScore -= 5
                }
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
