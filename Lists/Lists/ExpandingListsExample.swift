//
//  ExpandingListsExample.swift
//  Lists
//
//  Created by kim sunchul on 2021/02/14.
//  Copyright © 2021 kim sunchul. All rights reserved.
//

import SwiftUI

struct Bookmark: Identifiable {
  let id = UUID()
  let name: String
  let icon: String
  var items: [Bookmark]?

  static let apple = Bookmark(name: "Apple", icon: "1.circle")
  static let bbc = Bookmark(name: "BBC", icon: "square.and.pencil")
  static let swift = Bookmark(name: "Swift", icon: "bolt.fill")
  static let twitter = Bookmark(name: "Twitter", icon: "mic")

  static let example1 = Bookmark(
    name: "Favorites",
    icon: "star",
    items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter]
  )
  static let example2 = Bookmark(
    name: "Recent",
    icon: "timer",
    items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter]
  )
  static let example3 = Bookmark(
    name: "Recommended",
    icon: "hand.thumbsup",
    items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter]
  )
}

struct ExpandingListsExample: View {
  let items: [Bookmark] = [.example1, .example2, .example3]
  var body: some View {
    if #available(iOS 14.0, *) {
      List(items, children: \.items) { row in
        Image(systemName: row.icon)
        Text(row.name)
      }
    } else {
      // Fallback on earlier versions
    }
  }
}

struct ExpandingListsExample_Previews: PreviewProvider {
  static var previews: some View {
    ExpandingListsExample()
  }
}
