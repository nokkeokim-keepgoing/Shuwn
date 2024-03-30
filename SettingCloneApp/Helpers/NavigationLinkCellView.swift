//
//  NavigationLinkCellView.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

struct NavigationLinkCellView: View {
    let setting: Setting
    var subTitle: String? = nil
    
    var body: some View {
        NavigationLink(value: setting) {
            Label {
                HStack {
                    Text(setting.name)
                    if let subTitle = subTitle {
                        Spacer()
                        Text(subTitle)
                            .foregroundStyle(.gray)
                    }
                }
            } icon: {
                IconView(name: setting.iconName, backgroundColor: setting.iconBackgroundColor)
            }
        }
    }
}
#Preview {
    NavigationLinkCellView(setting: Setting(name: "알림", iconName: "bell.badge.fill", iconBackgroundColor: .red, type: .navigationLink))
}
