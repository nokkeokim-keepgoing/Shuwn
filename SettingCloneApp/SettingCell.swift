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
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(.indigo)
                .foregroundColor(.white)
                .cornerRadius(6)
            Spacer().frame(width: 12)
            NavigationLink {
                Text(cellName)
            } label: {
                Text(cellName)
            }
        }
    }
}

#Preview {
    SettingCell(iconName: "hourglass", cellName: "스크린 타임")
}
