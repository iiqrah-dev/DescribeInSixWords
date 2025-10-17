//
//  GridView.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 09/08/2025.
//

import SwiftUI

struct GridView: View {
//    @Binding var path: [Screen]
    @StateObject private var viewModel = GridViewModel()
    
    var body: some View {
        VStack {
            Text("\(viewModel.gridColumnCount)")
            Text("\(viewModel.gridRowCount)")
            
            HStack {
                Spacer()
                PrimaryOutlinedButton(label: "Restart") {
                }
                
                Spacer()
                
                PrimaryOutlinedButton(label: " Save   ") {
                    
                }
                Spacer()
            }
        }
    }
}

#Preview {
//    GridView(path: .constant([]))
    GridView()
}
