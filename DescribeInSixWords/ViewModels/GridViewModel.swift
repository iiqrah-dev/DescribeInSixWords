//
//  GridViewModel.swift
//  DescribeInSixWords
//
//  Created by Iqrah Nadeem on 19/10/2025.
//

import Photos
import Foundation
import UIKit
import SwiftUICore

class GridViewModel: ObservableObject {
    
    @MainActor func saveImage(_ mainContent: some View) -> UIImage? {
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
