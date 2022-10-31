//
// Created by Karsten Westra on 31/10/2022.
//

import Foundation

enum BrawlError: Error {
    case noData
}

class BrawlStarsApi {

    private let url = URL(string: "https://api.brawlstars.com/v1/brawlers")

    private let API_KEY = ""

    let shared = URLSession.shared

    private let decoder = JSONDecoder()

    public func brawlers() async -> Result<BrawlerList, Error> {
        await withCheckedContinuation { [decoder] (continuation: CheckedContinuation<Result<BrawlerList, Error>, Never>) in
            var request = URLRequest(url: url!)
            request.setValue(API_KEY, forHTTPHeaderField: "Authorization")

            shared.dataTask(with: request) { data, response, error in
                guard error == nil else {
                    return continuation.resume(returning: Result<BrawlerList, Error>.failure(error!))
                }
                guard let data else {
                    return continuation.resume(returning: Result<BrawlerList, Error>.failure(BrawlError.noData))
                }
                do {
                    let brawlers: BrawlerList = try decoder.decode(BrawlerList.self, from: data)
                    return continuation.resume(returning: Result<BrawlerList, Error>.success(brawlers))
                } catch {
                    return continuation.resume(returning: Result.failure(error))
                }
            }.resume()
        }
    }
}
