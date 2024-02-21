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
    
    
    @State private var createNewEditor = false
    var body: some View {

            
            VStack {
    
                List{
                    
                    ForEach(editors){ editor in
                        NavigationLink {
                          EditorDetailView(editor: editor)
                        } label: {
                            HStack{
                                Text(editor.name)
                                    .foregroundStyle(.purple)
                                    .fontWeight(.medium)
                              
                            }
                        }
                    }
                    .onDelete(perform: delete)
                }
                .toolbar {
                    Button {
                        createNewEditor = true
                    }label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.purple)
                            .font(.system(size: 30))
                    }
                }
                .sheet(isPresented: $createNewEditor) {
                    NewEditorView()
                        .presentationDetents([.medium])
                }
            }
            .navigationBarTitle("Editeurs", displayMode: .large)

    }
    private func delete(at offsets: IndexSet){
        for offset in offsets {
            let editor = editors[offset]
            context.delete(editor)
        }
    }
}

#Preview {
    EditorListView()
        .modelContainer(for: Editor.self, inMemory: true)
}
