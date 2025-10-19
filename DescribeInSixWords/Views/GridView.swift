//
//  GridView.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 09/08/2025.
//

import SwiftUI
import Photos

struct GridView: View {
    @Binding var path: [Screen]
//    @EnvironmentObject var formViewModel: FormViewModel
        @StateObject private var formViewModel = FormViewModel()
    @StateObject private var gridViewModel = GridViewModel()
    
    var body: some View {
        VStack {
            
            mainContent
            
            buttons
        }
    }
}

private extension GridView {
    
    var title: some View {
        Text(Constants.Texts.appTitle)
            .font(.title)
            .bold()
            .padding(.vertical, Constants.Layout.paddingLarge)
    }
    
    var grid: some View {
        VStack{
            GridItemBox(word: formViewModel.fields[0].descriptor, boxColour: .pastelPurple, fontSize: .largeTitle)
            HStack{
                GridItemBox(word: formViewModel.fields[1].descriptor, boxColour: .pastelGreen)
                GridItemBox(word: formViewModel.fields[2].descriptor, boxColour: .pastelOrange)
            }
            HStack {
                GridItemBox(word: formViewModel.fields[3].descriptor, boxColour: .pastelBlue)
                VStack {
                    GridItemBox(word: formViewModel.fields[4].descriptor, boxColour: .pastelRed)
                    GridItemBox(word: formViewModel.fields[5].descriptor, boxColour: .pastelYellow)
                }
            }
        }
        .padding(.all)
        .frame(width: 400, height: 500)
        
    }
    
    var buttons: some View {
        HStack {
            Spacer()
            PrimaryOutlinedButton(label: "Restart") {
                performRestart()
            }
            Spacer()
            PrimaryOutlinedButton(label: " Save   ") {
                performSave()
                
            }
            Spacer()
        }
        .padding(.vertical, Constants.Layout.paddingLarge)
    }
    
    var mainContent: some View {
        ZStack {
            
            Color.white
                .ignoresSafeArea()
            
            VStack(spacing: Constants.Layout.paddingLarge) {
                title
                grid
            }
            .background(.white)
            .padding(Constants.Layout.paddingLarge)
        }
    }
    
    func performSave()  {
        if let image = gridViewModel.saveImage(mainContent) {
            gridViewModel.saveImageToPhotoLibrary(image)
        }
    }
    
    func performRestart()  {
        formViewModel.clearAllFields()
        path = [.form]
    }
    
}

#Preview {
    GridView(path: .constant([]))
}
