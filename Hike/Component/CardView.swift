//
//  CardView.swift
//  Hike
//
//  Created by David Viloria Ortega on 21/08/24.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                //Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size:52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMediumm],
                                               startPoint: .bottom,
                                               endPoint: .top)
                            )
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            CustomButtonView()
                        })
                    }
                    Text("Fun and enjoyable outdoor activity for friends and family")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(.colorGrayMedium)
                    
                }
                .padding(.horizontal,30)
                //Main Content
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 1), value: imageNumber)
                }
                //Footer
                Button {
                    randomImage()
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.5), radius: 0.5, x: 1, y: 2)
                    
                }.buttonStyle(GradientButton())
            }
        }
        .frame(width: 320, height: 570)
    }
    
    func randomImage(){
        repeat{
            randomNumber = Int.random(in: 1...5)
            
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
}

#Preview {
    CardView()
}
