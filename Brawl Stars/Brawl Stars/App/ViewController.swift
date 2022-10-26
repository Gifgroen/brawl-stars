//
//  ViewController.swift
//  Brawl Stars
//
//  Created by Karsten Westra on 26/10/2022.
//

import UIKit

class ViewController: UIViewController {

    private let API_KEY = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green

        let url = URL(string: "https://api.brawlstars.com/v1/brawlers")
        var request = URLRequest(url: url!)
        request.setValue(API_KEY, forHTTPHeaderField: "Authorization")

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data {
                let json = String(data: data, encoding: .utf8)
                print("json = \(String(describing: json))")
            }
        }.resume()
    }
}
