//
//  ContentView.swift
//  IosPracticeApp
//
//  Created by angel david  on 1/15/26.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageMost = ""
    
    var body: some View {
        
        VStack{
            Spacer()
            //Image import
            
            Image(systemName: imageMost)
            //Properties of Image
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            //posicionador de marco, o cambiador de tamanio pues
            //.frame(width: 200, height: 200)
            // Text Creation
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            
            
            Spacer()
            Button ("Press Me!"){
                if message == "You Are Awesome"{
                    imageMost = "hand.thumbsup"
                    message = "You Are Great"
                    
                    
                }else{
                    message = "You Are Awesome"
                    imageMost = "sun.max.fill"
                }
                   
                    
                
         
                
            }
            
            
            
            
            
            
            
        }
        
        .buttonStyle(.borderedProminent)
        .font(.title2)
        //modificador para elementos visuales funcionales (botones etc.)
        .tint(.orange)
        
        
        
        
        
        
        
        .padding()
        
    }
}


#Preview {
    ContentView()
}
