//
//  GridViewModel.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 09/08/2025.
//

import Foundation

class GridViewModel: ObservableObject {
    
    let gridColumnCount: Int = 2
    let gridRowCount: Int = 3
    
    let grid:[GridItem] = [
        GridItem(wordIndex: 0, rowSpan: 1, columnSpan: 2, orientation: .horizontal, boxColour: .purple),
        GridItem(wordIndex: 1, rowSpan: 1, columnSpan: 1, orientation: .horizontal, boxColour: .green),
        GridItem(wordIndex: 2, rowSpan: 1, columnSpan: 1, orientation: .horizontal, boxColour: .orange),
        GridItem(wordIndex: 3, rowSpan: 1, columnSpan: 1, orientation: .vertical, boxColour: .blue),
        GridItem(wordIndex: 4, rowSpan: 1, columnSpan: 1, orientation: .horizontal, boxColour: .red),
        GridItem(wordIndex: 5, rowSpan: 1, columnSpan: 1, orientation: .horizontal, boxColour: .yellow),
    ]
}
