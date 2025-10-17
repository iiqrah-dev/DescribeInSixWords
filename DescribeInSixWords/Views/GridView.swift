//
//  GridView.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 09/08/2025.
//

import SwiftUI

struct GridView: View {
    @Binding var path: [Screen]
    @EnvironmentObject var formViewModel: FormViewModel
    @StateObject private var gridViewModel = GridViewModel()
    
    var body: some View {
        VStack {
            Text("\(gridViewModel.gridColumnCount)")
            Text("\(gridViewModel.gridRowCount)")
            
            ForEach(0..<formViewModel.fields.count, id: \.self) { index in
                VStack {
                    Text(formViewModel.fields[index].descriptor)
                        .font(.caption)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }.padding(.bottom, Constants.Layout.paddingLarge)
            }
            
            HStack {
                Spacer()
                PrimaryOutlinedButton(label: "Restart") {
                    formViewModel.clearAllFields()
                    path = [.form]
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
    GridView(path: .constant([]))
}
