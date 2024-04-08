//
//  SettingCloneAppApp.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/13/24.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct SettingCloneAppApp: App {
    init() {
       // Kakao SDK 초기화
       KakaoSDK.initSDK(appKey: "bb289ca2be3ac5303017b03c102f52fc")
   }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(SettingEnvironmentData())
        }
    }
}
