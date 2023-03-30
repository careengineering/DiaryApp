//
//  FabButton.swift
//  DiaryApp
//
//  Created by Çare C. on 26.03.2023.
//

import SwiftUI

struct FabButtonView: View {
    var body: some View {
        Text("+")
            .foregroundColor(.white)
            .font(.title)
            .padding()
            .background(Color.blue)
            .mask(Circle())
    }
}

struct FabButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FabButtonView()
    }
}
