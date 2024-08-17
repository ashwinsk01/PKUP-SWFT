//
//  UploadView.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/15/24.
//

import SwiftUI

struct UploadView: View {
    @State private var showPicker = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var selectedImages: [UIImage] = []
    @State private var navigateToEditor = false

    var body: some View {
        NavigationStack {
            VStack {
                if selectedImages.isEmpty {
                    Button("Open Camera") {
                        sourceType = .camera
                        showPicker = true
                    }
                    .padding()

                    Button("Open Gallery") {
                        sourceType = .photoLibrary
                        showPicker = true
                    }
                    .padding()
                } else {
                    Button("Edit Images") {
                        navigateToEditor = true
                    }
                    .padding()
                }
            }
            .sheet(isPresented: $showPicker) {
                ImagePicker(selectedImages: $selectedImages, sourceType: sourceType)
            }
            .navigationDestination(isPresented: $navigateToEditor) {
                EditorView(images: $selectedImages)
            }
        }
    }
}

struct UploadView_Previews: PreviewProvider {
    static var previews: some View {
        UploadView()
    }
}

#Preview {
    UploadView()
}
