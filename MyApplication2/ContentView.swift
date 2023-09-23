//
//  ContentView.swift
//  MyApplication2
//
//  Created by no name on 2023/06/11.
//  
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAndroid = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            if isAndroid {
                Text("Hello, Android!")
            } else {
                Text("Hello, iPhone!")
            }
            Button("Push me !") {
                isAndroid = !isAndroid
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
