//
//  CustomListRowView.swift
//  Hike
//
//  Created by David Viloria Ortega on 24/08/24.
//

import SwiftUI

struct CustomListRowView: View {
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String?
    @State var rowTintColor: Color
    @State var rowLinkLabel: String?
    @State var rowlinkDestination: String?
    
    var body: some View {
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if rowLinkLabel != nil && rowlinkDestination != nil{
                Link(rowLinkLabel!, destination: URL(string: rowlinkDestination!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            } else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)

                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List() {
        CustomListRowView(rowLabel: "Website",
                          rowIcon: "globe",
                          rowContent: "Jon doe",
                          rowTintColor: .pink,
                          rowLinkLabel: "mi",
                          rowlinkDestination: "https://www.linkedin.com/in/davidviloria/"
        )
    }
}
