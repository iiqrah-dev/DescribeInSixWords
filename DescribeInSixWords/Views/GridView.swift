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
                formViewModel.clearAllFields()
                path = [.form]
            }
            Spacer()
            PrimaryOutlinedButton(label: " Save   ") {
                if let image = saveImage() {
                    saveImageToPhotoLibrary(image)
                }
            }
            Spacer()
        }
        .padding(.vertical, Constants.Layout.paddingLarge)
    }
    
    var mainContent: some View {
        VStack(spacing: Constants.Layout.paddingLarge) {
            title
            grid
        }
        .background(.white)
        .padding(Constants.Layout.paddingLarge)
    }
    
    func saveImage() -> UIImage? {
        let renderer = ImageRenderer(content: mainContent)
        return renderer.uiImage
    }
    
    func saveImageToPhotoLibrary(_ image: UIImage) {
        PHPhotoLibrary.requestAuthorization { status in
            if status == .authorized {
                PHPhotoLibrary.shared().performChanges({
                    PHAssetChangeRequest.creationRequestForAsset(from: image)
                }) { success, error in
                    if success {
                        print("Image saved successfully!")
                    } else if let error = error {
                        print("Error saving image: \(error.localizedDescription)")
                    }
                }
            } else {
                print("Photo library access denied")
            }
        }
    }
    
}

#Preview {
    GridView(path: .constant([]))
}
