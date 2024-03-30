//
//  ContentView.swift
//  SettingCloneApp
//
//  Created by sseungwonnn on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        SettingView().environmentObject(NavigationManager())
    }
}

#Preview {
    ContentView()
}
