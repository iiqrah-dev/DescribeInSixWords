//
//  PrimaryOutlinedButton.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 08/08/2025.
//

import SwiftUI

struct PrimaryOutlinedButton: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
        }
        .padding(.all, Constants.Layout.paddingMedium)
        .overlay(
            RoundedRectangle(cornerRadius: Constants.Layout.cornerRadius)
                .stroke(Constants.Colors.buttonBorder, lineWidth: Constants.Layout.buttonBorderWidth)
        )
        .foregroundStyle(Constants.Colors.buttonText)
    }
}

#Preview {
    PrimaryOutlinedButton(label: "Test Label"){}
}
