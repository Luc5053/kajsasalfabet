//
//  TextView.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-13.
//

import SwiftUI

struct TextView: View {
    
    @State var onClick = false
    
    var body: some View {
        VStack {
            Text("Hallå allihop!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.orange)
                .padding(.all)
            LottieView(animationName: "Ska vi spela", loopMode: .loop)
            ScrollView {
                
                Spacer()
                
                Text("Jag heter Kajsa och jag är 8 år gammal. Jag tycker om att läsa och skriva. Vill du träna alfabetet med mig, som jag gjorde med min mamma Eva?")
                    .font(.title2)
                    .fontWeight(.light)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
            }
            
            Button("Starta"){
                onClick = true
            }
            .padding(.all)
            .font(.largeTitle)
            .foregroundColor(.blue)
            .fullScreenCover(isPresented: $onClick) {
                collection()
                
            }
            
            
        }
        .padding(.horizontal)
        
    }
    
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
