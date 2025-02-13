//
//  ContentView.swift
//  H4KeR NEWZZ
//
//  Created by Ansh Hardaha on 2025/01/25.
//

import SwiftUI

struct ContentView: View {
    //@State var newsText: String
    var body: some View {
        NavigationView{
            List(posts) { post in
                
                Text(post.title )
                
            }.navigationBarTitle("H4KeR NEWZZ")
        }
    }
}

#Preview {
    ContentView()
}

struct post: Identifiable{
    let id: String
    let title: String
}

let posts = [
    post(id: "1", title: "welcome to hacker news"),
    post(id: "2", title: "currently it has no more data"),
    post(id: "3", title: "cause its not connected to the hacker api")
]
