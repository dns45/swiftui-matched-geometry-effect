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
            NavigationLink("Growing circle without geometry", destination: GrowingCircleWithoutGeometry())
                .navigationBarTitle("SwiftUI Animations 🎩")
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
