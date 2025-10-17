//
//  FormView.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 08/08/2025.
//

import SwiftUI

struct FormView: View {
    @Binding var path: [Screen]
    @EnvironmentObject var viewModel: FormViewModel
    
    var body: some View {
        VStack {
            title
            ScrollView(showsIndicators: false) {
                form
                button
            }
        }.padding(.horizontal, Constants.Layout.paddingLarge)
    }
}

private extension FormView {
    
    var title: some View {
        Text(Constants.Texts.appTitle)
            .font(.title)
            .bold()
            .padding(.bottom, Constants.Layout.paddingLarge)
    }
    
    var form: some View {
        ForEach(0..<viewModel.fields.count, id: \.self) { index in
            VStack {
                Text(viewModel.fields[index].prompt)
                    .font(.caption)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                TextField(viewModel.fields[index].placeholder, text: $viewModel.fields[index].descriptor)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }.padding(.bottom, Constants.Layout.paddingLarge)
        }
    }
    
    var button: some View {
        PrimaryOutlinedButton(label: Constants.Texts.buttonGenerate){
            path.append(.grid)
        }
        .padding(.vertical, Constants.Layout.paddingLarge)
        .frame(maxWidth: .infinity, alignment: .center)
    }
}

#Preview {
    FormView(path: .constant([]))
}
