//
//  ProfileCellVIew.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

struct ProfileRow: View {
    let user: User
    
    var body: some View {
        NavigationLink(value: user) {
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40.0, height: 40.0)
                    .padding([.top, .leading, .trailing])
                    .background(.gray.opacity(0.5))
                    .foregroundStyle(.white)
                    .clipShape(Circle())
                
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
    ProfileRow(user: USER)
}
