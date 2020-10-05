//
//  GrowingCircleWithGeometry.swift
//  MatchedGeometryEffect
//
//  Created by Teply, Daniel on 03/10/2020.
//

import SwiftUI

struct GrowingCircleWithGeometry: View {
    @Namespace private var shapeTransition
    @State private var expand = false

    private let transitionId = "circle"

    var body: some View {
        if expand {
            // Final state
            Circle()
                .fill(Color.green)
                .matchedGeometryEffect(id: transitionId, in: shapeTransition)
                .frame(width: 300, height: 300)
                .offset(y: -150)
                .animation(.default)
                .onTapGesture {
                    expand.toggle()
                }
        } else {
            // Start state
            Circle()
                .fill(Color.green)
                .matchedGeometryEffect(id: transitionId, in: shapeTransition)
                .frame(width: 150, height: 150)
                .offset(y: 0)
                .animation(.default)
                .onTapGesture {
                    expand.toggle()
                }
        }
    }
}

struct GrowingCircleWithGeometry_Previews: PreviewProvider {
    static var previews: some View {
        GrowingCircleWithGeometry()
    }
}
