//
//  SwappingImages.swift
//  MatchedGeometryEffect
//
//  Created by Teply, Daniel on 06/10/2020.
//

import SwiftUI

struct SwappingImages: View {
    @Namespace private var imageTransition
    @State private var swap = false

    private let firstImageId = "cupOfCoffee"
    private let secondImageId = "cupsOfCoffee"

    private let imageWidth: CGFloat = 140
    private let swapButtonSize: CGFloat = 40

    var body: some View {
        if swap {
            HStack {
                Image(secondImageId)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageWidth)
                    .matchedGeometryEffect(id: secondImageId, in: imageTransition)
                Image(systemName: "arrow.right.arrow.left")
                    .font(.system(size: swapButtonSize))
                    .onTapGesture {
                        swap.toggle()
                    }
                Image(firstImageId)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageWidth)
                    .matchedGeometryEffect(id: firstImageId, in: imageTransition)
            }.animation(.linear)
        } else {
            HStack {
                Image(firstImageId)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageWidth)
                    .matchedGeometryEffect(id: firstImageId, in: imageTransition)
                Image(systemName: "arrow.right.arrow.left")
                    .font(.system(size: swapButtonSize))
                    .onTapGesture {
                        swap.toggle()
                    }
                Image(secondImageId)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageWidth)
                    .matchedGeometryEffect(id: secondImageId, in: imageTransition)
            }.animation(.linear)
        }
    }
}

struct SwappingImages_Previews: PreviewProvider {
    static var previews: some View {
        SwappingImages()
    }
}
