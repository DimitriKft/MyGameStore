//
//  Editor.swift
//  MyGameStore
//
//  Created by dimitri on 15/02/2024.
//

import Foundation
import SwiftData

@Model
class Editor {
    var name: String
    @Relationship(deleteRule: .cascade) var videoGame: [VideoGame] = []
    
    init(name: String) {
        self.name = name
      
    }
    
    
    func addVideoGame(_ game: VideoGame) {
          self.videoGame.append(game)
      }
}
