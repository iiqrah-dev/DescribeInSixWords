//
//  WelcomeView.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 07/08/2025.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var path: [Screen]
    
    var body: some View {
        VStack {
            VStack {
                Text(Constants.Texts.appTitle)
                    .font(.largeTitle)
                    .padding(.vertical)
                
                VStack {
                    Text(Constants.Texts.welcomeViewSubtitle1)
                    Text(Constants.Texts.welcomeViewSubtitle2)
                }.padding(.vertical, Constants.Layout.paddingLarge)
                
                PrimaryOutlinedButton(label: Constants.Texts.buttonLetsBegin) {
                    path.append(.form)
                }
            }
        }
    }
}

#Preview {
    WelcomeView(path: .constant([]))
}
