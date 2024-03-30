//
//  SettingCloneAppApp.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/13/24.
//

import SwiftUI

@main
struct SettingCloneAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(SettingEnvironmentData())
        }
    }
}
