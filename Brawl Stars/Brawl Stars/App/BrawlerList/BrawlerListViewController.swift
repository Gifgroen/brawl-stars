//
// Created by Karsten Westra on 31/10/2022.
//

import UIKit

class BrawlerListViewController: UIViewController {

    let interactor = BrawlerListInteractor()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red

        Task {
            let brawlers = await interactor.get()
            for b in brawlers.items {
                print("Brawler: \(b.name)")
            }
        }
    }
}
