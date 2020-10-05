//
//  CircleFullScreenMorph.swift
//  MatchedGeometryEffect
//
//  Created by Teply, Daniel on 03/10/2020.
//

import SwiftUI

struct CircleFullScreenMorph: View {
    @Namespace private var shapeTransition
    @State private var expand = false

    private let transitionId = "rectangle"

    var body: some View {
        VStack {
            if expand {
                // Full Screen
                RoundedRectangle(cornerRadius: 40.0)
                    .matchedGeometryEffect(id: transitionId, in: shapeTransition)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .foregroundColor(Color(.systemGreen))
                    .animation(.easeIn)
                    .onTapGesture {
                        expand.toggle()
                    }
            } else {
                Spacer()

                // Circle
                RoundedRectangle(cornerRadius: 50.0)
                    .matchedGeometryEffect(id: transitionId, in: shapeTransition)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemOrange))
                    .animation(.easeIn)
                    .onTapGesture {
                        expand.toggle()
                    }
            }
        }
    }
}

struct CircleFullScreenMorph_Previews: PreviewProvider {
    static var previews: some View {
        CircleFullScreenMorph()
            .previewDevice(PreviewDevice(rawValue: "iPhone X"))
    }
}
