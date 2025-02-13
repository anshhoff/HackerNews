//
//  ContentView.swift
//  H4KeR NEWZZ
//
//  Created by Ansh Hardaha on 2025/01/25.
//

import SwiftUI

struct ContentView: View {
    //@State var newsText: String
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List (networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    VStack{
                        HStack{
                            Image(systemName: "arrowshape.up.fill").foregroundColor(.green)
                            Text(String(post.points)).foregroundColor(.green)
                            Text(post.title)
                        }
                        Text(post.created_at)
                            .foregroundColor(.gray)
                            
                    }
                }
            }.navigationBarTitle("H4KeR NEWZZ")
        }
        .onAppear {
            self.networkManager.fetchdata()
        }
    }
}

#Preview {
    ContentView()
}
