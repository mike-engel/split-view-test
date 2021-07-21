//
//  split_view_testApp.swift
//  split-view-test
//
//  Created by Michael Engel on 25.05.21.
//

import SwiftUI

@main
struct split_view_testApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().edgesIgnoringSafeArea(.top)
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
