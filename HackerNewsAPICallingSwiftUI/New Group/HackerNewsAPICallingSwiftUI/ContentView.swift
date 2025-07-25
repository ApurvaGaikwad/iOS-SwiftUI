//
//  ContentView.swift
//  HackerNewsAPICallingSwiftUI
//
//  Created by Apurva Gaikwad on 31/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView
        {
            List(posts) { post in
                Text(post.title)
            }
            .navigationTitle("Hacker News")
        }
    }
}

#Preview {
    ContentView()
}


struct Post: Identifiable {
    let id: String // it should be have id property
    let title: String
}

let posts = [
    Post(id: "1", title: "Heloo"),
    Post(id: "2", title: "Apurva"),
    Post(id: "3", title: "How Are you")
]
