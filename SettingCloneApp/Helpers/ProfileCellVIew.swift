//
//  ProfileCellVIew.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

struct ProfileCellView: View {
    let user: UserData
    
    var body: some View {
        NavigationLink(value: user) {
            HStack {
                IconView(name: user.profileIcon, backgroundColor: .gray, isProfile: true)
                    .padding(.trailing, 6)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(user.name)
                        .font(.title2)
                    Text("Apple ID, iCloud+, 미디어 및 구입 항목")
                        .font(.caption)
                }
            }
        }
    }
}

#Preview {
    ProfileCellView(user: UserData(name: "정승원", profileIcon: "person"))
}
