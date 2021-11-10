//
//  collection.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-04.
//

import SwiftUI

struct collection: View {
    var alphabet: [String] = ["Aa", "Bb", "Cc", "Dd", "Ee", "Ff", "Gg", "Hh", "Ii", "Jj", "Kk", "Ll", "Mm", "Nn", "Oo", "Pp", "Qq", "Rr", "Ss", "Tt", "Uu", "Vv", "Ww", "Xx", "Yy", "Zz", "Åå", "Ää", "Öö"]
    
    @State var hejdåbutton = false
    
    let layout = [
        GridItem(.adaptive(minimum: 110))
    ]
    var body: some View {
        
        NavigationView {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.black, .orange, .gray, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
            VStack {
                ScrollView {
                        LazyVGrid(columns: layout, spacing: 4
                        ) {
                            ForEach(alphabet, id: \.self){ currentalphabet in
            
                                VStack {
                                    NavigationLink(destination: ContentView(moreinfo: (currentalphabet))) {
    
                                    Text(currentalphabet)
                                        .fontWeight(.bold)
                                        .padding(.all)
                                        .font(.title)
                                        .frame(width: 115, height: 115)
                                        .foregroundColor(.white)
                                        .background(Color.green)
                                        .cornerRadius(10.0)
                                }
                            }
                      }
                   
                    }
                    
                    .padding(.horizontal)
                }
                .navigationTitle("Hej Kajsa")
                
                NavigationLink(destination: LottieView(animationName: "cyclomontdor", loopMode: .loop)) {

                    Text("Hejdå Kajsa!!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                }
                
                
            }
            
            
            
        }
        .background(Color.red)
    }
}
/*
 
 .fullScreenCover(isPresented: $hejdåbutton) {
 ContentView()
 }
 
 
 Button(action: {
     hejdåbutton = true
     
     if(hejdåbutton == true)
     {
     }
 }) {
     Text("Hejdå Kajsa!!")
         .font(.title)
         .fontWeight(.bold)
         .foregroundColor(Color.green)
 }
 .padding(.all)
 .frame(width: 380.0, height: 50.0)
 */
    
    
struct collection_Previews: PreviewProvider {
    static var previews: some View {
        collection()
//.previewInterfaceOrientation(.portrait)
    }
}
}
