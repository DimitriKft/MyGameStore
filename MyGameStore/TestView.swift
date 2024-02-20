//
//  TestView.swift
//  MyGameStore
//
//  Created by dimitri on 14/02/2024.
//

import SwiftUI
import SwiftData

struct GamesView: View {
    @Query private var games: [VideoGame]
    var body: some View {
        List(games){ game in
            Text(game.name)
        }
    }
}

#Preview {
    GamesView()
}
