//
//  collection.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-04.
//
import CoreHaptics
import SwiftUI

struct collection: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    
    var alphabet: [String] = ["Aa", "Bb", "Cc", "Dd", "Ee", "Ff", "Gg", "Hh", "Ii", "Jj", "Kk", "Ll", "Mm", "Nn", "Oo", "Pp", "Qq", "Rr", "Ss", "Tt", "Uu", "Vv", "Ww", "Xx", "Yy", "Zz", "Åå", "Ää", "Öö"]
    
    
    var texts = [String]()
    
    @State var hejdåbutton = false
    
    let layout = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 2, alignment: nil),
        GridItem(.flexible(), spacing: 2, alignment: nil),
        GridItem(.flexible(), spacing: 2, alignment: nil),
        GridItem(.flexible(), spacing: 2, alignment: nil)
    ]
    
    var body: some View {
        
        NavigationView {
            ZStack{
                VStack {
                    ScrollView {
                        LazyVGrid(columns: columns, alignment: .center, spacing: 2,
                                  pinnedViews: [],
                                  content: {
                            
                            ForEach(0..<alphabet.count){ currentalphabet in
                                
                                NavigationLink(destination: ContentView(moreinfo1: (alphabet[currentalphabet]), moreinfo2: AllTexts().thetexts[currentalphabet])) {
                                    
                                    Text(alphabet[currentalphabet])
                                        .fontWeight(.bold)
                                        .font(.title)
                                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                                        .aspectRatio(1.0, contentMode: .fill)
                                        .padding(.all, 0.0)
                                        .foregroundColor(.white)
                                        .background(Color.orange)
                                        .cornerRadius(10.0)
                                }
                            }
                        })
                        
                        .padding(.horizontal, 5)
                    }
                    .frame(maxHeight: .infinity)
                    .navigationTitle("Alfabetet")
                    
                    Button(action: {
                        hejdåbutton = true
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                        
                    }) {
                        Text("Hejdå!!")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }.padding()
                    .frame(width: 110.0, height: 50.0)
//                        .background(.ultraThinMaterial)
    //                    .background(Color(.orange))
                        .background(Color(.orange))
                        .cornerRadius(50)
                        .padding()
                }
//                .background(Color("newColor"))
                .background(Color(.orange).opacity(0.3))
                
                if(hejdåbutton)
                {
                    LottieView(animationName: "bye bye", loopMode: .loop)
                }
                
            }
        }
    }
    
    
    struct collection_Previews: PreviewProvider {
        static var previews: some View {
            collection()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
