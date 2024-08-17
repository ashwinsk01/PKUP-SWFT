//
//  ImagePicker.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/16/24.
//

import Foundation
import SwiftUI

#if os(iOS)
import UIKit

struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedImages: [UIImage]
    var sourceType: UIImagePickerController.SourceType

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = sourceType
        picker.mediaTypes = ["public.image", "public.movie"]
        picker.allowsEditing = false
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImages.append(image)
            }
            parent.presentationMode.wrappedValue.dismiss()
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

#elseif os(macOS)
import AppKit

struct ImagePicker: View {
    @Binding var selectedImages: [NSImage]
    @State private var isPickerPresented = false

    var body: some View {
        Button("Select Images") {
            isPickerPresented = true
        }
        .fileImporter(
            isPresented: $isPickerPresented,
            allowedContentTypes: [.image],
            allowsMultipleSelection: true
        ) { result in
            switch result {
            case .success(let urls):
                selectedImages = urls.compactMap { url in
                    if let image = NSImage(contentsOf: url) {
                        return image
                    }
                    return nil
                }
            case .failure(let error):
                print("Failed to import images: \(error.localizedDescription)")
            }
        }
    }
}
#endif
