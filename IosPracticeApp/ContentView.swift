//
//  ContentView.swift
//  IosPracticeApp
//
//  Created by angel david  on 1/15/26.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var lastMessageNumer = -1
    @State private var lastImageNumber = -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer : AVAudioPlayer!
    let numberOfImages = 10
    
    var body: some View {
        
        VStack{
            
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            /*sirve para textos muy largos que en en teoria
             se salen de un frame
             .minimumScaleFactor(0.5)
             */
                .frame(height: 130)
                .animation(.default, value: message)
            
            Spacer()
            
            Image(imageName)
            //Properties of Image
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            //redondeo de las esquinas de una imagen
                .clipShape(RoundedRectangle(cornerRadius: 30))
            //agrega una sombra abajo, simula que algo esta flotando
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            //posicionador de marco, o cambiador de tamanio pues
            //.frame(width: 200, height: 200)
            // Text Creation
            
            
            
            
            
            Spacer()
            Button ("Press Me!"){/*
                                  let message1 = "You Are Awesome"
                                  let message2 = "You Are Great"
                                  
                                  
                                  if message == message1{
                                  message = message2
                                  imageMost = "hand.thumbsup"
                                  
                                  
                                  }else{
                                  message = message1
                                  imageMost = "sun.max.fill"
                                  }*/
                
                // ----------------  Ternary operator
                //message = (message == "You Are Awesome" ? "You Are Great" : "You Are Awesome")
                
                // imageName = (imageName == "image0" ? "image1" : "image0")
                
                // ----------  Print Random Messages  -----------------
                let messages = ["You are awsome" , "You are Great" , "Fabulous? That's you First Project", "I love SwiftUI"]
                
                
                //message = (messages[Int.random(in: 0...messages.count-1)])
                
                var messageNumber : Int
                repeat {
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                while messageNumber == lastMessageNumer
                        message = messages[messageNumber]
                        lastMessageNumer = messageNumber
                        
                        
                        
                        /* esto sirve para impresion secuencial
                         
                         message = messages[messageNumber]
                         messageNumber += 1
                         if messageNumber == messages.count{
                         messageNumber = 0
                         }
                         
                         */
                        var imageNumber : Int
                        repeat{
                    imageNumber = Int.random(in: 0...numberOfImages-1)
                }while imageNumber == lastImageNumber
                        imageName = "image\(imageNumber)"
                        lastImageNumber = imageNumber
                        
                        //----------- REPRODUCCION DE SONIDO -----
                        var soundNumber : Int
                        repeat{
                    soundNumber = Int.random(in: 0...5)
                   
                   } while soundNumber == lastSoundNumber
                                lastSoundNumber = soundNumber
                                let soundName = "sound\(soundNumber)"
                                
                                guard let soundFile = NSDataAsset (name: soundName)else{
                        print(" could not read file  named \(soundName)")
                        return
                    }
                    do{
                        audioPlayer = try AVAudioPlayer(data: soundFile.data)
                        audioPlayer.play()
                    }catch{
                        print("ERROR: \(error.localizedDescription)creating audioplayer")
                        
                    }
                        
                        
                        
                        /* ------------ Cambios de varias Imagenes ----------------
                         imageName = "image\(imageNumber)"
                         imageNumber += 1
                         
                         if imageNumber > 9{
                         imageNumber = 0
                         
                         
                         }
                         */
                        
                        
                        
                        
                        
                        
                    }
                
                
                
                
                
                
                
            }
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            //modificador para elementos visuales funcionales (botones etc.)
            
            
            
            
            
            
            
            
            .padding()
            
        }
    }
    
    
    #Preview {
        ContentView()
    }
