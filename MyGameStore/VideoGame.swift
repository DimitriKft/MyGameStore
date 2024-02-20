//
//  VideoGame.swift
//  MyGameStore
//
//  Created by dimitri on 14/02/2024.
//

import Foundation
import SwiftData

@Model
class VideoGame{
    @Attribute(.unique) var name: String
    var favorite: Bool
    var editor :  Editor
 
    init(name: String, favorite: Bool = false, editor: Editor) {
        self.name = name
        self.favorite = favorite
        self.editor = editor
    }
}


@Model
class Editor {
    var name: String
    var videoGame: [VideoGame] = []
    
    init(name: String) {
        self.name = name
      
    }
    
    
    func addVideoGame(_ game: VideoGame) {
          self.videoGame.append(game)
      }
}
