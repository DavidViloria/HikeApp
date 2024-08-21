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
            //MARK: - 3. CEPTH
            
            //MARK: - 2. LIGHT
            
            //MARK: - 1. SURFACE
            
            LinearGradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")], startPoint: .bottom, endPoint: .top)
                .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
