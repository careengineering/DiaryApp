//
//  DiaryRow.swift
//  DiaryApp
//
//  Created by Çare C. on 30.03.2023.
//

import SwiftUI

struct DiaryItemRow: View {
    var item: Item
    var itemFormatter: DateFormatter
    var body: some View {
        HStack {
            Text(item.emoji ?? "").font(.title)
            VStack (alignment: .leading) {
                Text(item.detail ?? "").font(.headline)
                Text(item.title ?? "").foregroundColor(.secondary)
                Text("\(item.timestamp!, formatter: itemFormatter)")
            }
        }
    }
}
