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
                    .tint(.purple)
                    .foregroundStyle(.purple)
                    .fontWeight(.medium)
                HStack {
                    Text("Editeur : \(videoGame.editor!.name)")
                        .foregroundStyle(.secondary)
                    Spacer()
                }
            }
        }
    }}


struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(configuration.isOn ? Color.accentColor : .secondary)
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                    .imageScale(.large)
            }
        }
        .buttonStyle(.plain)
    }
}
