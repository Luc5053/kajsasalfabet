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
            Text("Hallå allihopa!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.orange)
                .padding(.horizontal)
            LottieView(animationName: "Ska vi spela", loopMode: .loop)
            ScrollView {
                
                Spacer()
                
                Text("Jag heter Kajsa och jag är 4 år gammal. Vill du leka alfabet med mig, som jag gjorde med min mamma Eva?")
                    .font(.title2)
                    .fontWeight(.light)
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
            }
            
            Button("Ska vi leka!"){
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
