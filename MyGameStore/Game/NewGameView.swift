//
//  NewGameView.swift
//  MyGameStore
//
//  Created by dimitri on 14/02/2024.
//

import SwiftUI
import SwiftData

struct NewGameView: View {
    @State private var selectedEditorIndex = 0
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @Query private var editors: [Editor]
    @State private var showAlert = false
    var body: some View {
        Form {
            Picker("Sélectionnez l'éditeur", selection: $selectedEditorIndex) {
                ForEach(editors.indices, id: \.self) { editor in
                    Text(self.editors[editor].name).tag(editor)
                }
            }
            
            TextField("Titre du jeu", text: $name)
            
            Button("Créer") {
                if !editors.isEmpty {
                    let newGame = VideoGame(name: name, favorite: false, editor: editors[selectedEditorIndex])
                    editors[selectedEditorIndex].addVideoGame(newGame)
                    context.insert(newGame)
                    dismiss()
                } else {
                    showAlert = true
                }
            }
        }
        .alert("Attention", isPresented: $showAlert) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Il n'y a pas encore d'éditeur. Veuillez en ajouter un avant de créer un jeu.")
        }
        
    }
    
}

#Preview {
    NewGameView()
}


