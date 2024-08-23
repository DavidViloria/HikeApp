//
//  CustomCircleView.swift
//  Hike
//
//  Created by David Viloria Ortega on 23/08/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")], startPoint: isAnimateGradient ? .topLeading : .bottomLeading, endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing))
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
            }
            MotionAnimationView()
        }//: Zstack ends
        .frame(width: 256, height: 256)

    }
}

#Preview {
    CustomCircleView()
}
