//
//  TelaPhApp.swift
//  TelaPh
//
//  Created by iredefbmac_22 on 15/07/25.
//

import SwiftUI
import SwiftData

@main
struct TelaPhApp: App {
    var body: some Scene {
        WindowGroup {
            Root()
                .modelContainer(for: [User.self, Rolagem.self])
        }
    }
}
