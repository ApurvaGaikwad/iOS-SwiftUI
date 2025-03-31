//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Apurva Gaikwad on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1

    var body: some View {
        ZStack {
            Image("GreenBackground").resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                    
                } label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                }
                .background(Color.red)

            }
            
            
        }
    }
}

struct DiceView: View {
    let n: Int

    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

#Preview {
    ContentView()
}

