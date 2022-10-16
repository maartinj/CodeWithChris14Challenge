//
//  Lesson4.swift
//  CodeWithChris14Challenge
//
//  Created by Marcin Jędrzejak on 02/10/2022.
//

import SwiftUI

struct Lesson4: View {
    var body: some View {
        
        VStack {
            
            ZStack {
                
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(5.0)
                    .padding(.horizontal, 20.0)
                
                VStack {
                    
                    Text("CN Tower")
                        .font(.title)
                    
                    Text("Toronto")
                        .font(.caption)
                }
                .padding()
                .foregroundColor(.white)
                .background(.black).opacity(0.8)
                .cornerRadius(5.0)
            }
            .padding(.vertical)
            
            ZStack {
                
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(5.0)
                    .padding(.horizontal, 20.0)
                
                VStack {
                    
                    Text("Big Ben")
                        .font(.title)
                    
                    Text("London")
                        .font(.caption)
                }
                .padding()
                .foregroundColor(.white)
                .background(.black).opacity(0.8)
                .cornerRadius(5.0)
            }
            .padding(.vertical)
        }
    }
}

struct Lesson4_Previews: PreviewProvider {
    static var previews: some View {
        Lesson4()
    }
}
