//
//  TextView.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-13.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.black, .orange, .gray, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ScrollView {
                    Text("Hallå allihopa, ")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    Spacer()
                    Text("Mitt namn är Kajsa och jag är 4 år gammal. Jag skulle vilja ta med dig på alfabetstur, vilja jag gjorde med min mamma Eva."  )
                        .font(.title)
                        .foregroundColor(.white)
                    
                    
    //                Text("Aa " + " Anden i flaskan anade aldrig att alla anade allt.")
    //                    .padding(.horizontal)
    //                Text("Bb " + "Bananer i pyjamas badar bastu bums.")
    //                    .padding(.horizontal)
    //                Text("Bb" + "Bananer i pyjamas badar bastu bums.")
    //                Text("Cc" + "Cecilias cykel cirklar runt på cirkusen.")
    //                Text("Den dödande draken drar elden mot Disa.")
    //                Text("Eskil elefant syns inte när det elektriska ljuset elimineras.")
    //                Text("Flaggans färger fläktar fort.")
                    Spacer()
    //                Text("Grisen Gustav grymtar efter Greta.")
    //                Text("Hunden Hasse hejar helknäppt.")
                    
    //                Text("Igelkotten Isadora idrottar idogt.")
    //                Text("Jovisst, jordgubbar finns i juni och juli.")
    //                Text("Kungens krona är kobolt blå.")
    //                Text("Lejonet Leonard leker i lingonskogen.")
    //                Text("Månens magi manar många myter.")
        //            Text("Nisses näsa når nästan ner till naveln.")
        //            Text("I osten finns det fina o.")
        //            Text("Peka aldrig pistolen mot Pelle.")
        //            Text("Quenell är en liten bulle av malet kött att lägga i soppan.")
        //            Text("Rosen röd ringer Ronja regelbundet")
        //            Text("Snorre säl surfar så snällt.")
        //            Text("Tuppen Tullitu tittar på TV.")
        //            Text("Ubåten U2 under vattnet undersöker.")
        //            Text("Vart leder vägen.")
        //            Text("Förr i tiden använde man walkie-talkie nu är det bara webben som gäller.")
        //            Text("Xylofonen är extra roligt att spela på.")
        //            Text("Yxan hugger i veden.")
        //            Text("Zebran trivs bäst på zoo.")
        //            Text("I ån stor vattnet aldrig stilla.")
        //            Text("Äggen är äntligen ätbara.")
        //            Text("Ögon och öron ömhet önskar.")
                }
                NavigationLink(destination: LottieView(animationName: "Ska vi spela", loopMode: .loop)) {
                    Text("Ska vi spela")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.all)
                }
                
            }
            .padding(.all)
     
        }
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
