//
//  SettingEnvironmentData.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/30/24.
//

import Foundation

class SettingEnvironmentData: ObservableObject {
    @Published var isAirplaneModeOn: Bool = false
    @Published var isBluetoothOn: Bool = false
    @Published var isWifiOn: Bool = true
    @Published var wifiName: String? = "SwiftFun"
    
    // 사운드 및 햅틱
    @Published var isSilentMode: Bool = true
    @Published var showInStatusBar: Bool = true
    @Published var changeWithButtons: Bool = true
    @Published var volume: Double = 50.0
    var bluetoothStatus: String {
        isBluetoothOn ? "켬" : "끔"
    }
    
    // 제어 센터
    @Published var isInAppAccessEnabled: Bool = true
    @Published var isHomeControlVisible: Bool = false

}
