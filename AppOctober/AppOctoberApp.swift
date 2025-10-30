//
//  AppOctoberApp.swift
//  AppOctober
//
//  Created by odc on 29/10/2025.
//

import SwiftUI

@main
struct AppOctoberApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab("Map", systemImage: "mappin.and.ellipse") {
                    MonumentView()
                }

                Tab("List", systemImage: "list.bullet.rectangle.fill") {
                    MapLocations()
                }
            }

        }
    }
}
