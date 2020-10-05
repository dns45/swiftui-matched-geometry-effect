//
//  CircleRectangleMorph.swift
//  MatchedGeometryEffect
//
//  Created by Teply, Daniel on 03/10/2020.
//

import SwiftUI

struct CircleRectangleMorph: View {
    @Namespace private var shapeTransition
    @State private var expand = false

    private let transitionId = "rectangle"

    var body: some View {
        VStack {
            if expand {
                Spacer()

                // Rounded Rectangle
                RoundedRectangle(cornerRadius: 50.0)
                    .matchedGeometryEffect(id: transitionId, in: shapeTransition)
                    .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 300)
                    .padding()
                    .foregroundColor(Color(.systemGreen))
                    .animation(.easeIn)
                    .onTapGesture {
                        expand.toggle()
                    }
            } else {
                // Circle
                RoundedRectangle(cornerRadius: 50.0)
                    .matchedGeometryEffect(id: transitionId, in: shapeTransition)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(.systemOrange))
                    .animation(.easeIn)
                    .onTapGesture {
                        expand.toggle()
                    }

                Spacer()
            }
        }
    }
}

struct CircleRectangleMorph_Previews: PreviewProvider {
    static var previews: some View {
        CircleRectangleMorph()
    }
}
