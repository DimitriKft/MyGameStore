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
    //    @Query(
    //        filter: #Predicate<VideoGame> {$0.favorite == true},
    //        sort: [SortDescriptor(\VideoGame.name,
    //        order: .forward)])
    //        var favorites: [VideoGame]
    var body: some View {
        List{
            Section("Favories") {
                
                ForEach(myGames){ game in
                    if game.favorite == true{
                        Text(game.name)
                    }
                }
                
            }
            
        }
    }
}



#Preview {
    FavoritListGameView()
}
