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
            Color(.orange).opacity(0.3).edgesIgnoringSafeArea(.all)
//            LinearGradient(gradient: Gradient(colors: [.orange, .orange, .orange, .orange]), startPoint: .top, endPoint: .bottom)
//                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Kajsas alfabet")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.horizontal)
                
                LottieView(animationName: "Ska vi spela", loopMode: .loop)
                
                VStack(alignment: .center) {
                    Text("Hallå allihop!")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.bottom, 2)
                    
                    Text("Jag heter Kajsa och jag är 8 år gammal. Jag tycker om att läsa och skriva. Vill du träna alfabetet med mig, som jag gjorde med min mamma Eva?")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }.padding(.bottom, 100.0)
                
                Spacer()
                
                Button {
                    onClick = true
                    let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                    impactHeavy.impactOccurred()
                } label: {
                    Text("Start").bold()
                }
                .padding()
                .font(.title2)
                .foregroundColor(Color(.white))
                .fullScreenCover(isPresented: $onClick) {
                    collection()
                    
                }.frame(width: 100.0, height: 50.0)
//                    .background(.ultraThinMaterial)
//                    .background(Color(.orange))
                    .background(Color(.orange))
                    .cornerRadius(50)
                    .padding()
                
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
