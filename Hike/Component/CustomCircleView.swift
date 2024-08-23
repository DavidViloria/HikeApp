//
//  CustomCircleView.swift
//  Hike
//
//  Created by David Viloria Ortega on 23/08/24.
//

import SwiftUI

struct CustomCircleView: View {
    var body: some View {
        Circle()
            .fill(LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")], startPoint: .topTrailing, endPoint: .bottomLeading))
            .frame(width: 256, height: 256)    }
}

#Preview {
    CustomCircleView()
}
