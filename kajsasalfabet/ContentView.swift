//
//  ContentView.swift
//  kajsasalfabet
//
//  Created by Luc Kabamba on 2021-11-04.
//

import SwiftUI

struct ContentView: View {
    
    @State var moreinfo = ""
    
    var body: some View {
       Text(moreinfo)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
