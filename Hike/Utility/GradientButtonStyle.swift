//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by David Viloria Ortega on 23/08/24.
//

import Foundation
import SwiftUI


struct GradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                //Conditional Statement
                configuration.isPressed ? LinearGradient(colors: [.customGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom) :                 LinearGradient(colors: [.customGrayMediumm, .customGrayLight], startPoint: .top, endPoint: .bottom)


            )
            .cornerRadius(40)
    }
}
