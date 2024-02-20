//
//  MyGameStoreApp.swift
//  MyGameStore
//
//  Created by dimitri on 14/02/2024.
//

import SwiftUI
import SwiftData

@main
struct MyGameStoreApp: App {
//    let modelContainer: ModelContainer
//       
//       init() {
//           do {
//               modelContainer = try ModelContainer(for: Editor.self )
//
//           } catch {
//               fatalError("Could not initialize ModelContainer")
//           }
//       }
       

    var body: some Scene {
        WindowGroup {
            StoreGame()
        }
        .modelContainer(for: Editor.self)
    }
}
