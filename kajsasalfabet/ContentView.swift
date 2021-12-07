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
                    //player.audioPlayer?.numberOfLoops = 0
            })
            
            Spacer()
            Text(moreinfo1)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("newColor"))
                .padding(.horizontal)
            Text(moreinfo2)
                .font(.title)
                .fontWeight(.light)
                .foregroundColor(Color("newColor"))
                .multilineTextAlignment(.center)
                .padding(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
