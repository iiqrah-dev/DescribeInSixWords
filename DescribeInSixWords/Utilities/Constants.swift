//
//  Constants.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 08/08/2025.
//

import SwiftUI

enum Constants {
    enum Texts {
        static let appTitle = "DescribeInSixWords"
        static let welcomeViewSubtitle1 = "Pick 6 words."
        static let welcomeViewSubtitle2 = "Generate a vibrant snapshot."
        static let buttonLetsBegin = "Let's begin"
        static let buttonGenerate = "Generate"
    }

    enum Colors {
        static let buttonBorder = Color.black
        static let buttonText = Color.black
    }
    
    enum Number {
        static let descriptorCount: Int = 6
    }

    enum Layout {
        static let paddingLarge: CGFloat = 30
        static let paddingMedium: CGFloat = 15
        static let paddingSmall: CGFloat = 10
        static let buttonBorderWidth: CGFloat = 1
        static let cornerRadius: CGFloat = 8
    }
}

