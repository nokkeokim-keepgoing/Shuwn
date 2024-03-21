//
//  data.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

let user: UserData = .init(name: "Shwun Jung", profileIcon: "person.fill")

let sections: [SettingSectionData] = [
    SettingSectionData(title: "연결", settings: [
        .init(name: "에어플레인 모드", iconName: "airplane", iconBackgroundColor: .orange, type: .toggle),
        .init(name: "Wi-Fi", iconName: "wifi", iconBackgroundColor: .blue, type: .navigationLink),
        .init(name: "Bluetooth", iconName: "bolt", iconBackgroundColor: .blue, type: .navigationLink),
        .init(name: "셀룰러", iconName: "antenna.radiowaves.left.and.right", iconBackgroundColor: .green, type: .navigationLink),
        .init(name: "개인용 핫스팟", iconName: "personalhotspot", iconBackgroundColor: .green, type: .navigationLink)
    ]),
    SettingSectionData(title: "알림 및 소리", settings: [
        .init(name: "알림", iconName: "bell.badge.fill", iconBackgroundColor: .red, type: .navigationLink),
        .init(name: "사운드 및 햅틱", iconName: "speaker.wave.3.fill", iconBackgroundColor: .red, type: .navigationLink),
        .init(name: "집중 모드", iconName: "moon.fill", iconBackgroundColor: .indigo, type: .navigationLink),
        .init(name: "스크린 타임", iconName: "hourglass", iconBackgroundColor: .indigo, type: .navigationLink)
    ]),
    SettingSectionData(title: "앱 스토어 및 결제", settings: [
        .init(name: "App Store", iconName: "storefront.fill", iconBackgroundColor: .blue, type: .navigationLink),
        .init(name: "지갑 및 Apple Pay", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink)
    ])
]
