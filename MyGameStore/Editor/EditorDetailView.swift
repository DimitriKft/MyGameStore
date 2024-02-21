//
//  EditorDetailView.swift
//  MyGameStore
//
//  Created by dimitri on 20/02/2024.
//

import SwiftUI
import SwiftData

struct EditorDetailView: View {
    var editor: Editor

    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text(editor.name)
                    .foregroundStyle(.purple)
                    .fontWeight(.medium)
                HStack{
                    Text("Nombre de jeu de l'éditeur : ")
                    Text("\(editor.videoGame.count)")
                }
                .font(.headline)
                .foregroundStyle(.secondary)
            }
            .padding()
                List(editor.videoGame){ game in
                    Text(game.name)
                        .foregroundStyle(.purple)
                        .fontWeight(.medium)
                }
           
  
        }
    }
}

//#Preview {
//    EditorDetailView()
//}





