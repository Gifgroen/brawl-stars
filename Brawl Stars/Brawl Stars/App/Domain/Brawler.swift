//
// Created by Karsten Westra on 31/10/2022.
//

import Foundation

struct Brawler: Codable {
    let id: Int
    let name: String
    let gadgets: [Accessory]
    let starPowers: [StarPower]
}
