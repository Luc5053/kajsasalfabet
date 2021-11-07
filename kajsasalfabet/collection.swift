//
//  collection.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-04.
//

import SwiftUI

struct collection: View {
    
    let alphabet: [String] = ["Aa", "Bb", "Cc", "Dd", "Ee", "Ff", "Gg", "Hh", "Ii", "Jj", "Kk", "Ll", "Mm", "Nn", "Oo", "Pp", "Qq", "Rr", "Ss", "Tt", "Uu", "Vv", "Ww", "Xx", "Yy", "Zz", "Åå", "Ää", "Öö"]
    
    let layout = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: ContentView()) {
                    LazyVGrid(columns: layout, spacing: 2
                    ) {
                        ForEach(alphabet, id: \.self){ currentalphabet in
                            VStack {
                                Text(currentalphabet)
                                    .fontWeight(.bold)
                                    .padding(.all)
                                    .font(.title).frame(width: 90, height: 90)
                                    .foregroundColor(.white)
                                    .background(.green)
                                    .cornerRadius(10.0)

                            }
                        }
                }
               
                }
                
                .padding(.horizontal)
            }
            
            .navigationTitle("Kajsas Alfabet")
        }
    }
}

struct collection_Previews: PreviewProvider {
    static var previews: some View {
        collection()
.previewInterfaceOrientation(.portrait)
    }
}
