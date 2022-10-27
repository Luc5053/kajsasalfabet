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
                Text("Hallå allihop!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.all)
                LottieView(animationName: "Ska vi spela", loopMode: .loop)
                ScrollView {
                    
                    Spacer()
                    
                    Text("Jag heter Kajsa och jag är 8 år gammal. Jag tycker om att läsa och skriva. Vill du träna alfabetet med mig, som jag gjorde med min mamma Eva?")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                }
                
                Button("Starta"){
                    onClick = true
                    let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                    impactHeavy.impactOccurred()
                }
                .padding(.all)
                .font(.largeTitle)
                .foregroundColor(Color("newColor"))
                .fullScreenCover(isPresented: $onClick) {
                    collection()
                    
                }
                
                
            }
            .padding(.horizontal)
//            .accentColor(/*@START_MENU_TOKEN@*/Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0)/*@END_MENU_TOKEN@*/)
//        .background(.blue)
        }
    }
    
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
