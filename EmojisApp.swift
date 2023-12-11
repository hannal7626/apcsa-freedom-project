//
//  EmojisApp.swift
//  Emojis
//
//  Created by hanna li on 12/11/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case fairy = "🧚🏻‍♀️"
    case cake = "🍰"
    case swan = "🦢"
    case bouquet = "💐"
}

struct ContentView: View {
    @State var selection: Emoji = .cake
    
    var body: some View {
        VStack{
            Text(selection.rawValue)
                .font(.system(size: 150))
            
            Picker("Select Emoji", selection: $selection) {
                ForEach(Emoji.allCases, id: \.self) {emoji in
                    Text(emoji.rawValue)
                }
            }
            .pickerStyle(.segmented)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
