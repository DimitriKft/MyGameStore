//
//  NewEditorView.swift
//  MyGameStore
//
//  Created by dimitri on 20/02/2024.
//

import SwiftUI
import SwiftData
struct NewEditorView: View {
    @State private var selectedEditorIndex = 0
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
   
    
    var body: some View {
        Form {
                 TextField("Nom de l'editeur", text: $name)
                 
                 Button("Créer") {
                
                     let newEditor = Editor(name: name)
                     
                   
                     context.insert(newEditor)
                     dismiss()
                   
                 }
                 .tint(.purple)
                 .fontWeight(.medium)
             }
    }
}

#Preview {
    NewEditorView()
}
