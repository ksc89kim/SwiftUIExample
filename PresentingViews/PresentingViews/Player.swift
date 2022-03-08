//
//  Player.swift
//  PresentingViews
//
//  Created by kim sunchul on 2022/03/08.
//

import SwiftUI

struct PlayerView: View {
  let name: String

  var body: some View {
    Text("Selected player: \(self.name)")
  }
}

struct Player: View {
  let players = [
    "Roy Kent",
    "Rochard Montlaur",
    "Dani Rajas",
    "Jamie Tart"
  ]

  var body: some View {
    NavigationView {
      List(players, id: \.self) { player in
        NavigationLink(destination: PlayerView(name: player)) {
          Text(player)
        }
        .navigationTitle("Select a player")
      }
    }
  }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
