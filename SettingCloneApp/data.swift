//
//  data.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/21/24.
//

import SwiftUI

let USER: User = .init(name: "Shwun Jung", profileIcon: "person.fill")

let SECTIONS: [SettingSection] = [
    SettingSection(title: "연결", settings: [
        .init(name: "에어플레인 모드", iconName: "airplane", iconBackgroundColor: .orange, type: .toggle),
        .init(name: "Wi-Fi", iconName: "wifi", iconBackgroundColor: .blue, type: .navigationLink),
        .init(name: "Bluetooth", iconName: "bolt", iconBackgroundColor: .blue, type: .navigationLink),
        .init(name: "셀룰러", iconName: "antenna.radiowaves.left.and.right", iconBackgroundColor: .green, type: .navigationLink),
        .init(name: "개인용 핫스팟", iconName: "personalhotspot", iconBackgroundColor: .green, type: .navigationLink)
    ]),
    SettingSection(title: "알림 및 소리", settings: [
        .init(name: "알림", iconName: "bell.badge.fill", iconBackgroundColor: .red, type: .navigationLink),
        .init(name: "사운드 및 햅틱", iconName: "speaker.wave.3.fill", iconBackgroundColor: .red, type: .navigationLink),
        .init(name: "집중 모드", iconName: "moon.fill", iconBackgroundColor: .indigo, type: .navigationLink),
        .init(name: "스크린 타임", iconName: "hourglass", iconBackgroundColor: .indigo, type: .navigationLink)
    ]),
    SettingSection(title: "일반", settings: [
        .init(name: "일반", iconName: "storefront.fill", iconBackgroundColor: .blue, type: .navigationLink),
        .init(name: "제어 센터", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "동작 버튼", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "디스플레이 및 밝기", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "홈 화면 및 앱 보관함", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "손쉬운 사용", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "배경화면", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "스탠바이", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "Siri 및 검색", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "Face ID 및 암호", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "긴급 구조 요청", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "노출 알림", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "배터리", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink),
        .init(name: "개인정보 보호 및 보안", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink)
    ]),
    
    SettingSection(title: "앱 스토어 및 결제", settings: [
        .init(name: "App Store", iconName: "storefront.fill", iconBackgroundColor: .blue, type: .navigationLink),
        .init(name: "지갑 및 Apple Pay", iconName: "creditcard.fill", iconBackgroundColor: .black, type: .navigationLink)
    ])
]

var isAirplainModeOn: Bool = false
