//
//  EditView.swift
//  TestEnvironmentObject
//
//  Created by Lucas Dantas de Moura Carvalho on 18/09/24.
//

import SwiftUI

struct EditView: View {
    @EnvironmentObject var userData: UserData
    @State var newName: String = ""
    
    var body: some View {
        VStack {
            Text("Bem-vindo, \(userData.name)!")
            TextField("Novo nome", text: $newName)
                .padding()
        
            Button("Mudar") {
                userData.name = newName
            }
            .frame(width: 100, height: 35)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(.rect(cornerRadius: 10))

            Text("Mude o nome acima e volte para ver a atualização.")
                .padding(.top, 50)
        }
        .navigationTitle("EditView")
        .padding(.horizontal, 40)
    }
}

#Preview {
    EditView()
        .environmentObject(UserData())
}
