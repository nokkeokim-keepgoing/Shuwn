//
//  SettingElement.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/18/24.
//

import SwiftUI

struct SettingRow: View {
    @ObservedObject var settingEnvironmentData: SettingEnvironmentData = SettingEnvironmentData()
    
    let setting: Setting
    
    var subTitle: String? {
        if setting.name == "Wi-Fi" {
            return settingEnvironmentData.wifiName
        } else if setting.name == "Bluetooth" {
            return settingEnvironmentData.bluetoothStatus
        } else {
            return nil
        }
    }
    
    var body: some View {
        switch setting.type {
        case .toggle:
            ToggleRow(setting: setting)
        case .navigationLink:
            NavigationLinkRow(setting: setting, subTitle: subTitle)
        }
    }
}

#Preview {
    SettingRow(setting: Setting(name: "사운드 및 햅틱", iconName: "speaker.wave.3.fill", iconBackgroundColor: .red, type: .navigationLink))
}
