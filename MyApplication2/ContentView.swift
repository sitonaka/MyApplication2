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
    @State private var dateText = ""
    
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
            Text(dateText)
            Button("Time !") {
                dateText = getDateText()
            }
        }
        .padding()
    }
    
    private func getDateText() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .long
        let now = Date()
        let result = formatter.string(from: now)
        return result
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
