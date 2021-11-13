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
    
    var body: some View {
        let player = AudioPlayer()
        let moreinfo2 = "hsf1"
       /* ZStack{
              LinearGradient(gradient: Gradient(colors: [.black, .green, .gray, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        */
        LottieView(animationName: moreinfo1, loopMode: .loop)
            .onAppear(perform: {
                player.playSound(sound1: moreinfo1, sound2: moreinfo1 + "1", type: "wav")
                player.audioPlayer?.numberOfLoops = 0
                               })
        Spacer()
        Text(moreinfo1)
            .font(.title)
            .fontWeight(.bold)
//        if moreinfo != "Ww" {
//            
//        } else {
//            Image("Ww")
//                .resizable()
//                .scaledToFit()
//                .frame(width: UIScreen.main
//                        .bounds.width)
//        }
/*        Text(moreinfo)
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(width: 200.0, height: 200.0).foregroundColor(.white)*/
        }
    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
