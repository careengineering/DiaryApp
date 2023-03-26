//
//  EmojiLabelView.swift
//  DiaryApp
//
//  Created by Çare C. on 26.03.2023.
//

import SwiftUI

struct EmojiLabelView: View {
    @Binding var emoji: String
    
    var body: some View {
        HStack {
            Text("select_emoji")
                .foregroundColor(Color.primary)
            Spacer()
            Text(self.emoji)
                .font(.title)
            if self.emoji.isEmpty{
                Text("🤩🥳🤓").font(.subheadline)
            }
            Image(systemName: "chevron.right").imageScale(.small).foregroundColor(.gray)
        }
    }
}
