//
//  GameListView.swift
//  MyGameStore
//
//  Created by dimitri on 14/02/2024.
//

import SwiftUI
import SwiftData

struct GameListView: View {
    @Query private var myGames: [VideoGame]
    @Query(sort: \VideoGame.name, order: .forward, animation: .smooth) private var games: [VideoGame]
 

           
    @State private var createNewGame = false
    @Environment(\.modelContext) var context

    var body: some View {
      
            VStack {
                NavigationLink {
                    FavoritListGameView()
                } label: {
                    Text("Favori")
                }
                List{
                    Section("Mes jeux") {
                        ForEach(games) { game in
                            HStack{
             
              VideoGameFavoriteBindable(videoGame: game)
                            }
                        }
                        .onDelete(perform: delete)
                    }
                 
                  
                }
            }
            .toolbar {
                Button {
                    createNewGame = true
                }label: {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.orange)
                        .font(.system(size: 30))
                }
            }
            .sheet(isPresented: $createNewGame) {
                NewGameView()
                    .presentationDetents([.medium])
            }  
    }
    private func delete(at offsets: IndexSet){
        for offset in offsets {
            let game = games[offset]
            context.delete(game)
        }
    }
}

#Preview {
    GameListView()
        .modelContainer(for: VideoGame.self, inMemory: true)
}
