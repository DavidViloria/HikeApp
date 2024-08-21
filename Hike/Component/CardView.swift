//
//  CardView.swift
//  Hike
//
//  Created by David Viloria Ortega on 21/08/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")], startPoint: .topTrailing, endPoint: .bottomLeading))
                .frame(width: 256, height: 256)
            Image("image-1")
                .resizable()
            .scaledToFit()
        }
    
    }
}

#Preview {
    CardView()
}
