//
//  GridItem.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 17/10/2025.
//

import SwiftUICore


struct GridItem {
    let wordIndex: Int
    let rowSpan: Int
    let columnSpan: Int
    let orientation: Orientation
    let colour: Color
}

enum Orientation {
    case horizontal
    case vertical
}


