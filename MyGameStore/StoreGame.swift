//
//  StoreGame.swift
//  MyGameStore
//
//  Created by dimitri on 20/02/2024.
//

import SwiftUI

struct StoreGame: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                GameListView()
            } label: {
                Text("Liste des jeux")
            }
            NavigationLink {
                EditorListView()
            } label: {
                Text("Liste des Editeurs")
            }

        }
    }
}

#Preview {
    StoreGame()
}
