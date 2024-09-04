//
//  com_ugerdem_demoApp.swift
//  com.ugerdem.demo
//
//  Created by Uğur Erdem on 5.09.2024.
//

import SwiftUI
import SwiftData

@main
struct com_ugerdem_demoApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
