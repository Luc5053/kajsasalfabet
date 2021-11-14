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
//        ZStack{
//            LinearGradient(gradient: Gradient(colors: [.black, .orange, .gray, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
//          LottieView(animationName: "bye bye", loopMode: .loop))      .edgesIgnoringSafeArea(.all)
        NavigationView {
            VStack {
                Text("Hallå allihopa!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.horizontal)
                LottieView(animationName: "Ska vi spela", loopMode: .loop)
                ScrollView {

                    Spacer()

                    Text("Mitt namn är Kajsa och jag är 4 år gammal.")
                        .font(.title)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    Text("Jag skulle vilja spela med dig på alfabet, som vi gjorde med min mamma Eva.")
                        .font(.title)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    
                    
//  Text("Aa " + " Anden i flaskan anade aldrig att alla anade allt.")
    //                    .padding(.horizontal)
    //                Text("Bb " + "Bananer i pyjamas badar bastu bums.")
    //                    .padding(.horizontal)
    //                Text("Bb" + "Bananer i pyjamas badar bastu bums.")
    //                Text("Cc" + "Cecilias cykel cirklar runt på cirkusen.")
    //                Text("Den dödande draken drar elden mot Disa.")
    //                Text("Eskil elefant syns inte när det elektriska ljuset elimineras.")
    //                Text("Flaggans färger fläktar fort.")
//                    Spacer()
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
//                NavigationLink(destination: collection()) {
                Button("Skulle vi spela!"){
                    onClick = true
                }
                .padding(.all)
                .font(.title)
                    .fullScreenCover(isPresented: $onClick) {
                        collection()
//                    Text()
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .padding(.all)
                }
                
//                    Text("Ska vi spela")
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .foregroundColor(.blue)
//                        .padding(.all)
            }
            .padding(.horizontal)
                
            }
        }
     
    }
//}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
//}
