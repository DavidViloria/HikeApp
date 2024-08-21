//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by David Viloria Ortega on 21/08/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            //MARK: - 3. DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            //MARK: - 2. LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)

            //MARK: - 1. SURFACE
            
            LinearGradient(
                colors: [
                    .customGreenLight, .customGreenMedium
                ],
                startPoint: .bottom, endPoint: .top)
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
