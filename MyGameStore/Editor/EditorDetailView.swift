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
            Text(editor.name)
            Text("\(editor.videoGame.count)")
            ForEach(editor.videoGame){ game in
                Text(game.name)
            }
        }
     
       }
}

//#Preview {
//    EditorDetailView()
//}





//        List(editors) { editor in
//            Text(editor.name)
//            List(editor.videoGame){ game in
//                Text(game.name)
//            }
//        }
