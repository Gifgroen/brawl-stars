//
//  BrawlerListContentView.swift
//  Brawl Stars
//
//  Created by Karsten Westra on 01/11/2022.
//

import SwiftUI

struct BrawlerListContentView: View {

    @State var items: [Brawler]

    var body: some View {
        List(items, id: \.id) { (item: Brawler) in
            BrawlerListItemView(id: item.id, name: item.name)
        }
    }
}

struct BrawlerListContentView_Previews: PreviewProvider {
    static var previews: some View {
        BrawlerListContentView(items: [
            Brawler(id: 1, name: "BULL", gadgets: [], starPowers: []),
            Brawler(id: 2, name: "JESSIE", gadgets: [], starPowers: [])
        ])
    }
}
