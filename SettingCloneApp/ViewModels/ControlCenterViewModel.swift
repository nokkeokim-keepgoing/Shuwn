//
//  ControlCenterViewModel.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 4/2/24.
//

import Foundation

class ControlCenterViewModel: ObservableObject {
    @Published var includedControlCenterItemList: [ControlCenterItem] = [
        .init(name: "다크 모드", iconName: "person", iconBackgroundColor: .black, isIncluded: true),
        .init(name: "화면 미러링", iconName: "person", iconBackgroundColor: .black, isIncluded: true),
        .init(name: "음악 인식", iconName: "person", iconBackgroundColor: .black, isIncluded: true),
        .init(name: "저전력 모드", iconName: "person", iconBackgroundColor: .black, isIncluded: true),
        .init(name: "화면 기록", iconName: "person", iconBackgroundColor: .black, isIncluded: true)
    ]
    
    @Published var excludedControlCenterItemList: [ControlCenterItem] = [
        .init(name: "음성 메모", iconName: "person", iconBackgroundColor: .black, isIncluded: false),
        .init(name: "Apple TV 리모컨", iconName: "person", iconBackgroundColor: .black, isIncluded: false)
    ]
    
    // 제어 센터에 추가
    func includeItem(item: ControlCenterItem) {
        var tempItem = item
        tempItem.isIncluded = true
        
        //
        if let index = excludedControlCenterItemList.firstIndex(of: item) {
            excludedControlCenterItemList[index].isIncluded = false
            print(includedControlCenterItemList[index].isIncluded)
            
            includedControlCenterItemList.append(tempItem)
            // 제거
            excludedControlCenterItemList.remove(at: index)
        }
    }
    
    // 포함된 아이템 순서 변경
    func moveItem(from indices: IndexSet, to newOffset: Int){
        includedControlCenterItemList.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    // 제어 센터에서 제거
    func removeItem(at indexSet: IndexSet) {
        for index in indexSet {
            var tempItem = includedControlCenterItemList[index]
            tempItem.isIncluded = false
            
            
            // 안 보이게
            includedControlCenterItemList[index].isIncluded = false
            excludedControlCenterItemList.append(tempItem)
        }
        // 제거
        includedControlCenterItemList.remove(atOffsets: indexSet)
    }
}
