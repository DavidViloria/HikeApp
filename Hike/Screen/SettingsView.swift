//
//  SettingsView.swift
//  Hike
//
//  Created by David Viloria Ortega on 23/08/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            //MARK: - SECTION HEADER
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack (spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choise")
                            .font(.system(size: 20, weight: .medium))
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top)
                
                VStack {
                    Text("Where can you find \nperfect tracks?")
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                        .padding(.top, 10)
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .foregroundStyle(.colorGreenMedium)
                        .fontWeight(.heavy)
                        .padding(.top, 10)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                
            }//: End of header
            .listRowSeparator(.hidden)
            
            //MARK: - SECTION ICONS
            //MARK: - SECTION ABOUT
            
        }
    }
}

#Preview {
    SettingsView()
}
