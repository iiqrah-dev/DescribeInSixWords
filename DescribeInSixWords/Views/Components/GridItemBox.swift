//
//  GridItemBox.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 17/10/2025.
//

import SwiftUI

struct GridItemBox: View {
    let word: String
    let boxColour: Color
    let boxBorderColour: Color = .white
    var textColour: Color = .darkGray
    var fontSize: Font = .title
    
    var body: some View {
        RoundedRectangle(cornerRadius: Constants.Layout.cornerRadius)
            .fill(boxColour)
            .stroke(boxBorderColour, lineWidth: Constants.Layout.gridBoxBorderWidth)
            .overlay(
                Text(word)
                    .font(fontSize)
            ).foregroundStyle(textColour)
    }
}

#Preview {
    GridItemBox(word: "Iqrah", boxColour: .purple, textColour: .white, fontSize: .largeTitle)
}
