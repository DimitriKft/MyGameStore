//
//  StoreGame.swift
//  MyGameStore
//
//  Created by dimitri on 20/02/2024.
//

import SwiftUI

struct StoreGame: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    GameListView()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 250, height: 70)
                            .foregroundStyle(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(.purple, lineWidth: 4)
                            )
                        Label("Mes jeux", systemImage: "arcade.stick.console")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundStyle(.purple)
                        
                    }
                    
                }
                .padding()
                NavigationLink {
                    EditorListView()
                } label: {
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 250, height: 70)
                            .foregroundStyle(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(.purple, lineWidth: 4)
                            )
                        Label("Les editeurs", systemImage: "list.bullet.rectangle")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundStyle(.purple)
                        
                    }
                }
                .padding()
                NavigationLink {
                    FavoritListGameView()
                } label: {
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 40)
                            .frame(width: 250, height: 70)
                            .foregroundStyle(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(.purple, lineWidth: 4)
                            )
                        Label("Mes favoris", systemImage: "heart.circle")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundStyle(.purple)
                        
                    }
                }
                .padding()
                
            }
            .navigationBarTitle("My Game Store", displayMode: .large)
            
        }
        .accentColor(.purple)
        
        
    }
}

#Preview {
    StoreGame()
}
