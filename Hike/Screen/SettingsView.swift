//
//  SettingsView.swift
//  Hike
//
//  Created by David Viloria Ortega on 23/08/24.
//

import SwiftUI

struct SettingsView: View {
    
    private let alternateAppIcons: [String] = [
        "AppIcon-Backpack",
        "AppIcon-Camera",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-MagnifyingGlass",
        "AppIcon-Campfire"
    ]
    
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
            
            Section {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12){
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button {
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]){ error in
                                    if error != nil{
                                        print("Failed request to update the app's icon \(String(describing: error?.localizedDescription))")
                                    }else{
                                        print("Succes, the icon was changed yo \(alternateAppIcons[item])")
                                    }
                                }
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                        .buttonStyle(.borderless)
                        }
                    }
                }//: End of the SCROLL VIEW
                .padding(.top, 12)
                Text("Choose your favorite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)

            } header: {
                Text("Alternate Icons")
            } footer: {
                
            }

            
            //MARK: - SECTION ABOUT
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copyright")
                    Spacer()
                }
                    .padding(.vertical, 10)
            ){
                CustomListRowView(rowLabel: "Tool", rowIcon: "hammer", rowContent: "Xcode", rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "Social Media", rowIcon: "bubble.left.and.bubble.right", rowContent: "Twitter", rowTintColor: .cyan)
                
                CustomListRowView(rowLabel: "Document", rowIcon: "doc.text", rowContent: "Resume", rowTintColor: .brown)
                
                CustomListRowView(rowLabel: "Platform", rowIcon: "gamecontroller.fill", rowContent: "PlayStation", rowTintColor: .yellow)
                
                CustomListRowView(rowLabel: "Database", rowIcon: "server.rack", rowContent: "Firebase", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Website", rowIcon: "network", rowTintColor: .yellow, rowLinkLabel: "Google", rowlinkDestination: "https://www.google.com")
                
                CustomListRowView(rowLabel: "Website", rowIcon: "link", rowTintColor: .red, rowLinkLabel: "YouTube", rowlinkDestination: "https://www.youtube.com")
                
                CustomListRowView(rowLabel: "Document", rowIcon: "folder", rowContent: "Project Plan", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "LinkedIn", rowIcon: "brain.filled.head.profile", rowTintColor: .indigo, rowLinkLabel: "David Profile", rowlinkDestination: "https://www.linkedin.com/in/davidviloria/")

            }//End: of the Section ABOUT
        }//:List
    }
}

#Preview {
    SettingsView()
}
