//
//  SettingElement.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/18/24.
//

import SwiftUI

struct SettingCell: View {
    let iconName: String
    let cellName: String
    let iconColor: Color
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(iconColor)
                .foregroundColor(.white)
                .cornerRadius(6)
            Spacer().frame(width: 12)
            NavigationLink {
                if cellName == "제어 센터" {
                    ControlCenterDetail()
                }
                else {
                    Text(cellName)
                }
            } label: {
                Text(cellName)
            }
        }
    }
}

#Preview {
    SettingCell(iconName: "hourglass", cellName: "스크린 타임", iconColor: .indigo)
}
