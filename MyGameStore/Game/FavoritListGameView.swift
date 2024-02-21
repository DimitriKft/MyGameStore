//
//  FavoritListGameView.swift
//  MyGameStore
//
//  Created by dimitri on 21/02/2024.
//

import SwiftUI
import SwiftData

struct FavoritListGameView: View {
    @Query private var myGames: [VideoGame]
    
    var body: some View {
        VStack {
            List{
                ForEach(myGames){ game in
                    if game.favorite == true{
                        Text(game.name)
                    }
                }
            }
            .navigationBarTitle("Mes favoris", displayMode: .large)
        }

    }
}


#Preview {
    FavoritListGameView()
}
