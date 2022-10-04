//
//  SNSApp.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/04.
//

import SwiftUI

@main
struct SNSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
