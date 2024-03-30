//
//  ToggleCellView.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

struct ToggleCellView: View {
    @ObservedObject var settingEnvironmentData: SettingEnvironmentData = SettingEnvironmentData()
    
    let setting: Setting
    
    var body: some View {
        Label {
            Toggle(isOn: $settingEnvironmentData.isAirplaneModeOn) {
                Text(setting.name)
            }
        } icon: {
            IconView(name: setting.iconName, backgroundColor: setting.iconBackgroundColor)
        }
    }
}

#Preview {
    ToggleCellView(setting: Setting(name: "에어플레인 모드", iconName: "airplane", iconBackgroundColor: .orange, type: .toggle)).environmentObject(SettingEnvironmentData())
}
