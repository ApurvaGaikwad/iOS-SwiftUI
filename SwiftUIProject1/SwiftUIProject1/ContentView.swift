//
//  ContentView.swift
//  SwiftUIProject1
//
//  Created by Apurva Gaikwad on 23/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.green)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("I am Rich!")
                    .font(.system(size: 40))
                    .foregroundColor(.red)
            }
            .padding()
        }
    }
       
}

#Preview {
    ContentView()
}
