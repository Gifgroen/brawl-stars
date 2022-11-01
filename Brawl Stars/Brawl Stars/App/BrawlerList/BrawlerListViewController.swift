//
// Created by Karsten Westra on 31/10/2022.
//

import UIKit
import SwiftUI

class BrawlerListViewController: UIViewController {

    let interactor = BrawlerListInteractor()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red

        Task {
            let response = await self.interactor.get()
            let rootView = BrawlerListContentView(items: response.items)

            let contentView = UIHostingController(rootView: rootView)
            self.embed(child: contentView)
            contentView.view.constrain(to: self.view)
        }
    }
}
