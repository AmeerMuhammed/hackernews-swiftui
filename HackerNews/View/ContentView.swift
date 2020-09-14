//
//  ContentView.swift
//  HackerNews
//
//  Created by AmeerMuhammed on 9/8/20.
//  Copyright © 2020 AmeerMuhammed. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                HStack {
                    Text("\(post.points)")
                    Text(post.title)
                    
                }
            }
        .navigationBarTitle("Hacker News")
    }
        .onAppear {
            self.networkManager.fetchData()
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone Xs") .environment(\.colorScheme, .dark)
    }
}
