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
        static let buttonClearAll = "Clear All"
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
        static let gridBoxBorderWidth: CGFloat = 3
        static let cornerRadius: CGFloat = 8
    }
}

extension Color {
    static let pastelPurple = Color(red: 210/255.0, green: 201/255.0, blue: 255/255.0)
    static let pastelGreen = Color(red: 175/255.0, green: 255/255.0, blue: 206/255.0)
    static let pastelOrange = Color(red: 255/255.0, green: 211/255.0, blue: 168/255.0)
    static let pastelBlue = Color(red: 178/255.0, green: 210/255.0, blue: 255/255.0)
    static let pastelRed = Color(red: 255/255.0, green: 190/255.0, blue: 191/255.0)
    static let pastelYellow = Color(red: 255/255.0, green: 247/255.0, blue: 175/255.0)
    static let darkGray = Color(red: 81/255.0, green: 81/255.0, blue: 81/255.0)
}

