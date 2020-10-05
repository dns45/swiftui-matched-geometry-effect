//
//  Home.swift
//  MatchedGeometryEffect
//
//  Created by Teply, Daniel on 02/10/2020.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                NavigationLink("Growing circle without geometry", destination: GrowingCircleWithoutGeometry())
                NavigationLink("Growing circle with geometry", destination: GrowingCircleWithGeometry())
                NavigationLink("Circle to rectangle morphing", destination: CircleRectangleMorph())
                NavigationLink("Circle to full screen morphing", destination: CircleFullScreenMorph())
                NavigationLink("Swapping dots", destination: SwappingDots())
                NavigationLink("Swapping images", destination: SwappingImages())
            }
            .navigationBarTitle("SwiftUI Animations 🎩")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
