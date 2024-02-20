//
//  EditorListView.swift
//  MyGameStore
//
//  Created by dimitri on 15/02/2024.
//

import SwiftUI
import SwiftData

struct EditorListView: View {
    @Environment(\.modelContext) private var context
    @Query private var editors: [Editor]
    @State var name = ""
    var body: some View {
        NavigationStack {
            
            VStack {
                TextField("Nom de l'editeur", text: $name)
                Button("Créer") {
                    let newEditor = Editor(name: name )
                    context.insert(newEditor)
                }
                List{
                    
                    ForEach(editors){ editor in
                        NavigationLink {
                          EditorDetailView(editor: editor)
                        } label: {
                            HStack{
                                Text(editor.name)
                              
                            }
                        }

                     
                    }
                }
            }
        }
    }
}

#Preview {
    EditorListView()
        .modelContainer(for: Editor.self, inMemory: true)
}
