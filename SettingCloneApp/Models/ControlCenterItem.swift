//
//  ControlCenter.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/30/24.
//

import SwiftUI

struct ControlCenterItem: Identifiable, Hashable, Equatable {
    var id = UUID()
    // 나머지를 캡슐화해도 좋을 듯
    let name: String
    let iconName: String
    let iconBackgroundColor: Color
    
    var isIncluded: Bool
    
}
