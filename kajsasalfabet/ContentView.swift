//
//  ContentView.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-04.
//

import SwiftUI

struct ContentView: View {
    
    @State var moreinfo1 = "hsf"
    @State var moreinfo2 = "Aa1"
    @State var moreinfo3 = "Aa2"
    
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
                .font(.title)
                .fontWeight(.regular)
                .padding(.all)
            Text(moreinfo1)
                .font(.title)
                .fontWeight(.light)
                .padding(.all)
        }
        
        
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
