//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Iñaki Yabar Bilbao on 8/8/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
