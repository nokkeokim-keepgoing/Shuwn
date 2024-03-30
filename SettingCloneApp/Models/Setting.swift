//
//  Setting.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

// TODO: Setting Name 열거형으로
struct Setting: Hashable {
    let name: String
    let iconName: String
    let iconBackgroundColor: Color
    let type: SettingType
}

enum SettingType {
    case toggle
    case navigationLink
}
