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
                    Circle()
                        .fill(LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")], startPoint: .topTrailing, endPoint: .bottomLeading))
                        .frame(width: 256, height: 256)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                //Footer
                
                Button {
                    
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.5), radius: 0.5, x: 1, y: 2)
                    
                }
                .padding(.vertical)
                .padding(.horizontal,30)
                .background(
                    LinearGradient(colors: [.customGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(40)
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
