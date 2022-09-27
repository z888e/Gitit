//
//  ContentView.swift
//  Gitit
//
//  Created by Zoé Hartman on 27/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GititResultView(userReq: "")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
