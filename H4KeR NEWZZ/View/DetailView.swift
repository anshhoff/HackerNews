//
//  DetailView.swift
//  H4KeR NEWZZ
//
//  Created by Ansh Hardaha on 2025/01/25.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https//:google.com")
}

