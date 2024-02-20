//
//  VideoGameFavoriteBindable.swift
//  MyGameStore
//
//  Created by dimitri on 15/02/2024.
//

import SwiftUI

struct VideoGameFavoriteBindable: View {
    @Bindable var videoGame: VideoGame
    var body: some View {
        HStack {
            VStack {
                Toggle(videoGame.name, isOn: $videoGame.favorite)
                HStack {
                    Text("Editeur : \(videoGame.editor.name)")
                    Spacer()
                }
            }
        }
    }}

//#Preview {
//    VideoGameFavoriteBindable(videoGame: VideoGame(name: "Wow", favorite: false, editor: Editor(name: "Ubisoft", videoGame: <#[VideoGame]#>)))
//        .modelContainer(for: VideoGame.self, inMemory: true)
//
//}
