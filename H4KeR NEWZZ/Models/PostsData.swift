//
//  PostsData.swift
//  H4KeR NEWZZ
//
//  Created by Ansh Hardaha on 2025/01/25.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
    let created_at: String
}
