//
// Created by Karsten Westra on 31/10/2022.
//

import Foundation

class BrawlerListInteractor {

    let api = BrawlStarsApi()

    public func get() async -> BrawlerList {
        let result = await api.brawlers()
        switch result {
        case .success(let brawlers):
            return brawlers
        case .failure(_):
            return BrawlerList(items: [])
        }
    }
}
