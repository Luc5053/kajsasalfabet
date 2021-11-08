//
//  ContentView.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-04.
//

import SwiftUI

struct ContentView: View {
    
    @State var moreinfo = "hsf"
    
    var body: some View {
        ZStack{
              LinearGradient(gradient: Gradient(colors: [.black, .green, .gray, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        Text(moreinfo)
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(width: 200.0, height: 200.0).foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
