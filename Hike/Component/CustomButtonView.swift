//
//  CustomButtonView.swift
//  Hike
//
//  Created by David Viloria Ortega on 23/08/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(LinearGradient(
                    colors: [
                        .white, .customGreenLight, .customGreenMedium],
                    startPoint: .bottomLeading,
                    endPoint: .topTrailing))
            Circle()
                .stroke(LinearGradient(colors: [.customGrayLight, .customGrayMediumm], startPoint: .top, endPoint: .bottom), lineWidth: 4.0)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(colors: [.customGrayLight, .customGrayMediumm], startPoint: .top, endPoint: .bottom)
                )
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
