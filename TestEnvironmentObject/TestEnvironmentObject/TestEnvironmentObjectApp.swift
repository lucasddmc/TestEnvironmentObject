//
//  TestEnvironmentObjectApp.swift
//  TestEnvironmentObject
//
//  Created by Lucas Dantas de Moura Carvalho on 18/09/24.
//

import SwiftUI

@main
struct TestEnvironmentObjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
        }
    }
}
