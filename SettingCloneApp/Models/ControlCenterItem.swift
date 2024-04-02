//
//  ControlCenter.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/30/24.
//

import SwiftUI

struct ControlCenterItem: Hashable, Identifiable, Equatable {
    let id = UUID()
    let name: String
    let iconName: String
    let iconBackgroundColor: Color
    
    var isIncluded: Bool
    
}
