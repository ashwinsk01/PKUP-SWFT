//
//  EditorView.swift
//  Pikkup
//
//  Created by Aryan Valluri on 8/16/24.
//

import SwiftUI

struct EditorView: View {
    @Binding var images: [UIImage]

    var body: some View {
        VStack {
            Text("Editor View")
            // add image editing UI here.
            ForEach(0..<images.count, id: \.self) { index in
                Image(uiImage: images[index])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipped()
                    .padding()
            }
        }
    }
}

#Preview {
    EditorView(images: .constant([UIImage()])) // Example for preview
}

