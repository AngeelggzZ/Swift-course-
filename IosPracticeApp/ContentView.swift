//
//  ContentView.swift
//  IosPracticeApp
//
//  Created by angel david  on 1/15/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Im Programmer"
    var body: some View {
        
        VStack{
            Spacer()
            //Image import
            Image(systemName: "swift")
            //Properties of Image
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            //posicionador de marco, o cambiador de tamanio pues
                .frame(width: 150, height: 150)
            // Text Creation
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            
            Spacer()
            
            HStack{
                //Button Creation
                Button("Awesome!") {
                    message = "Awesome!"
                    
                }
                
                Button("Great") {
                    message = "Great!"
                }
                
            }
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            //modificador para elementos visuales funcionales (botones etc.)
            .tint(.orange)
            
            
            
            
            
            
            
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
