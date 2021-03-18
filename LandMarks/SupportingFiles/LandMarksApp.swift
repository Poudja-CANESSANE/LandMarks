//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by Canessane Poudja on 17/03/2021.
//

import SwiftUI

@main
struct LandMarksApp: App {
    @StateObject var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
