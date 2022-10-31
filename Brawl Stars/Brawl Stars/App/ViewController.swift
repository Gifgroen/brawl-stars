//
//  ViewController.swift
//  Brawl Stars
//
//  Created by Karsten Westra on 26/10/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green

        let brawlerListView = BrawlerListViewController()
        self.embed(child: brawlerListView)
        brawlerListView.view.constrain(to: self.view)
    }
}
