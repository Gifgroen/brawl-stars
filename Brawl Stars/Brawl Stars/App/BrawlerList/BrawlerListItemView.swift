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
        HStack {
            if #available(iOS 15.0, *) {
                let url = URL(string: "http://gifgroen.local:8000/portraits/\(id).png")
                AsyncImage(url: url) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 150, height: 150)
            } else {
                // Fallback on earlier versions
            }

            VStack(alignment: .leading) {
                Text("\(self.id)")
                Text(self.name)
            }
        }
    }
}

struct BrawlerListItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrawlerListItemView(id: 16000000, name: "Shelly")
    }
}
