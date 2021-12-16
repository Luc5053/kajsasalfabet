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
    
    @State private var engine: CHHapticEngine?
    
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
//                LinearGradient(gradient: Gradient(colors: [.blue, .blue, .blue, .blue]), startPoint: .top, endPoint: .bottom)
//                    .edgesIgnoringSafeArea(.all)
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
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.orange)
                    }
                } // VSTACK
                .background(Color("newColor"))
                
                if(hejdåbutton)
                {
                    LottieView(animationName: "bye bye", loopMode: .loop)
            }
                
          } // ZSTACK
//            .background(Color.red)
       }
    }
    
    
    struct collection_Previews: PreviewProvider {
        static var previews: some View {
            collection()
                .previewInterfaceOrientation(.portrait)
        }
    }



class AllTexts {
    
    var thetexts = [String]()
    
    init() {
        
        thetexts.append("Anden i flaskan anade aldrig att alla anade allt.")
        thetexts.append("Bananer i pyjamas badar bastu bums.")
        thetexts.append("Cecilias cykel cirklar runt på cirkusen.")
        thetexts.append("Den dödande draken drar elden mot Disa.")
        thetexts.append("Eskil elefant syns inte när det elektriska ljuset elimineras.")
        thetexts.append("Flaggans färger fläktar fort.")
        thetexts.append("Grisen Gustav grymtar efter Greta.")
        thetexts.append("Hunden Hasse hejar helknäppt.")
        thetexts.append("Igelkotten Isadora idrottar idogt.")
        thetexts.append("Jovisst,   jordgubbar finns i juni och juli.")
        thetexts.append("Kungens krona är koboltblå.")
        thetexts.append("Lejonet Leonard ler i lingonskogen.")
        thetexts.append("Månens magi manar många myter.")
        thetexts.append("Nisses näsa når nästan ner till naveln.")
        thetexts.append("I osten finns det fina o.")
        thetexts.append("Peka aldrig pistolen mot Pelle.")
        thetexts.append("Quenell är en liten bulle av malet kött att lägga i soppan.")
        thetexts.append("Rosen röd ringer Ronja regelbundet")
        thetexts.append("Snorre säl surfar så snällt.")
        thetexts.append("Tuppen Tullitu tittar på TV.")
        thetexts.append("Ubåten U2 under vattnet undersöker.")
        thetexts.append("Vart leder vägen?")
        thetexts.append("Förr i tiden använde man walkie-talkie nu är det bara webben som gäller.")
        thetexts.append("Xylofonen är extra roligt att spela på.")
        thetexts.append("Yxan hugger i veden.")
        thetexts.append("Zebran trivs bäst på zoo.")
        thetexts.append("I ån står vattnet aldrig stilla.")
        thetexts.append("Äggen är äntligen ätbara.")
        thetexts.append("Ögon och öron ömhet önskar.")

    }
  }
}
