//
//  DetailScreen.swift
//  DiaryApp
//
//  Created by Çare C. on 30.03.2023.
//

import SwiftUI

struct DetailScreen: View {
    var item: Item
    var body: some View {
        Text(item.title ?? "")
    }
}
