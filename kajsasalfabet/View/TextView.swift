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
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.orange, .orange, .orange, .orange]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Kajsasalfabet")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                LottieView(animationName: "Ska vi spela", loopMode: .loop)
                
                VStack(alignment: .center) {
                    Text("Hallå allihop!")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom)

                    Text("Jag heter Kajsa och jag är 8 år gammal. Jag tycker om att läsa och skriva. Vill du träna alfabetet med mig, som jag gjorde med min mamma Eva?")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }.padding(.bottom, 100.0)
                
                Spacer()
                
                Button("Starta"){
                    onClick = true
                    let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                    impactHeavy.impactOccurred()
                }
                .padding(.all)
                .font(.title2)
                .foregroundColor(Color("newColor"))
                .fullScreenCover(isPresented: $onClick) {
                    collection()
                    
                }
                
            }
            .padding(.horizontal)
        }
    }
    
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
