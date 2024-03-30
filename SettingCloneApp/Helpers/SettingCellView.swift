//
//  SettingElement.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/18/24.
//

import SwiftUI

struct SettingCellView: View {
    let setting: Setting
    var wifiName: String?
    var bluetoothStatus: String = ""
    var subTitle: String? {
        if setting.name == "Wi-Fi" {
            return wifiName
        } else if setting.name == "Bluetooth" {
            return bluetoothStatus
        } else {
            return nil
        }
    }
    
    var body: some View {
        switch setting.type {
        case .toggle:
            ToggleCellView(setting: setting)
        case .navigationLink:
            NavigationLinkCellView(setting: setting, subTitle: subTitle)
        }
    }
}

#Preview {
    SettingCellView(setting: Setting(name: "사운드 및 햅틱", iconName: "speaker.wave.3.fill", iconBackgroundColor: .red, type: .navigationLink))
}
