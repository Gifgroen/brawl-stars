//
//  BrawlerListItemView.swift
//  Brawl Stars
//
//  Created by Karsten Westra on 01/11/2022.
//

import SwiftUI

struct BrawlerListItemView: View {
    @State var id: Int
    @State var name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(self.id)")
            Text(self.name)
        }
    }
}

struct BrawlerListItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrawlerListItemView(id: 1337, name: "Jessy")
    }
}
