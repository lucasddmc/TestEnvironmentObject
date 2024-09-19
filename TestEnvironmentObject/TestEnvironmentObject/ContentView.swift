//
//  ContentView.swift
//  TestEnvironmentObject
//
//  Created by Lucas Dantas de Moura Carvalho on 18/09/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            VStack {
                Text("Nome: \(userData.name)")
                NavigationLink("Editar", destination: EditView())
            }
            .navigationTitle("ContentView")
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(UserData())
}
