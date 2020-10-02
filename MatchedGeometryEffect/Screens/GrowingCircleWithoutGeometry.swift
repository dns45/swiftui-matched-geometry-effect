//
//  GrowingCircleWithoutGeometry.swift
//  MatchedGeometryEffect
//
//  Created by Teply, Daniel on 03/10/2020.
//

import SwiftUI

struct GrowingCircleWithoutGeometry: View {
    @State private var expand = false
    
    var circleSize: CGFloat {
        return expand ? 300 : 150
    }
    
    var body: some View {
        Circle()
            .fill(Color.green)
            .frame(width: circleSize, height: circleSize)
            .offset(y: expand ? -150 : 0)
            .animation(.default)
            .onTapGesture {
                expand.toggle()
            }
    }
}

struct GrowingCircleWithoutGeometry_Previews: PreviewProvider {
    static var previews: some View {
        GrowingCircleWithoutGeometry()
    }
}
