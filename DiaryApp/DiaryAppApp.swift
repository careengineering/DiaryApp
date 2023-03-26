//
//  DiaryAppApp.swift
//  DiaryApp
//
//  Created by Çare C. on 26.03.2023.
//

import SwiftUI

@main
struct DiaryAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            TabScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
