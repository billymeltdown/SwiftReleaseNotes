//
//  SwiftReleaseNotesApp.swift
//  SwiftReleaseNotes
//
//  Created by William Gray on 3/3/21.
//

import SwiftUI

@main
struct SwiftReleaseNotesApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
