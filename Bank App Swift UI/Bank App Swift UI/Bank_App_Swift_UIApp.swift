//
//  Bank_App_Swift_UIApp.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 15/11/23.
//

import SwiftUI
import SwiftData

@main
struct Bank_App_Swift_UIApp: App {
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
