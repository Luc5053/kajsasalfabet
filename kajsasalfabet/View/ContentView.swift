
//
//  ContentView.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-04.
//

import SwiftUI

struct ContentView: View {
    
    @State var moreinfo1 = "hsf"
    @State var moreinfo2 = "hsf"
   
    
    
    var body: some View {
        let player = AudioPlayer()
        
        VStack {
            LottieView(animationName: moreinfo1, loopMode: .loop)
                .onAppear(perform: {
                    player.playSound(sound1: moreinfo1, sound2: moreinfo1 + "1", type: "wav")
            })
            
            VStack{
                Text(moreinfo1)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 2)
                Text(moreinfo2)
                    .font(.headline)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
            }.padding(.bottom, 50)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}