//
//  MotionAnimationView.swift
//  Hike
//
//  Created by David Viloria Ortega on 23/08/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimating = false
    var body: some View {
        ZStack{
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(x: randomCoordinate(), y: randomCoordinate())
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ){
                            isAnimating = true
                        }
                    })
            }
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
    
    //MARK: - FUNCTIONS
    //1. RANDOM COORDINATE
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    //2. RANDOM SIZE
    func randomSize() -> CGFloat{
        return CGFloat.random(in: 20...60)
    }
    //3. RANDOM SCALE
    func randomScale() -> CGFloat{
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    //4. RANDOM SPEED
    func randomSpeed() -> Double{
        return Double.random(in: 0.05...1.0)
    }
    //5. RANDOM DELAY
    func randomDelay() -> Double{
        return Double.random(in: 0...2)
    }
}

#Preview {
    ZStack {
        Color.teal.ignoresSafeArea()
        MotionAnimationView()
    }
}
