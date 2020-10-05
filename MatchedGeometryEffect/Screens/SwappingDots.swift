//
//  SwappingDots.swift
//  MatchedGeometryEffect
//
//  Created by Teply, Daniel on 06/10/2020.
//

import SwiftUI

struct SwappingDots: View {
    @Namespace private var dotTransition
    @State private var swap = false

    private let orangeCircleId = "orangeCircle"
    private let greenCircleId = "greenCircle"

    var body: some View {
        if swap {
            // After swap
            // Green dot on the left, orange dot on the right
            HStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: greenCircleId, in: dotTransition)

                Spacer()

                Circle()
                    .fill(Color.orange)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: orangeCircleId, in: dotTransition)
            }
            .frame(width: 100)
            .animation(.linear)
            .onTapGesture {
                swap.toggle()
            }
        } else {
            // Start state
            // Orange dot on the left, green dot on the right
            HStack {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: orangeCircleId, in: dotTransition)

                Spacer()

                Circle()
                    .fill(Color.green)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: greenCircleId, in: dotTransition)
            }
            .frame(width: 100)
            .animation(.linear)
            .onTapGesture {
                swap.toggle()
            }
        }
    }
}

struct SwappingDots_Previews: PreviewProvider {
    static var previews: some View {
        SwappingDots()
    }
}
