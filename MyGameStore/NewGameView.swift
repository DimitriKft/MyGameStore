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
    
    var body: some View {
        Form {
                 Picker("Sélectionnez l'éditeur", selection: $selectedEditorIndex) {
                     ForEach(editors.indices, id: \.self) { editor in
                         Text(self.editors[editor].name).tag(editor)
                     }
                 }
                 
                 TextField("Titre du jeu", text: $name)
                 
                 Button("Créer") {
                
                     let newGame = VideoGame(name: name, favorite: false, editor: editors[selectedEditorIndex])
                     
                     editors[selectedEditorIndex].addVideoGame(newGame)
                     context.insert(newGame)
                     dismiss()
                   
                 }
             }
        
    }
}

#Preview {
    NewGameView()
}


