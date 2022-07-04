//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Tenzin wangyal on 6/20/22.
//

import SwiftUI
//Starting point
@main
//@Landmarks struct conforms and adopts @App protocol
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
