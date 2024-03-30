//
//  SettingSection.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

// TODO: header, footer 추가
struct SettingSection: Hashable {
    var title: String
    var settings: [Setting]
    var header: String?
    var footer: String?
}
