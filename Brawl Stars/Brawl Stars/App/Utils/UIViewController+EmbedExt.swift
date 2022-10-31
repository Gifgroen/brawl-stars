//
//  UIViewController+EmbedExt.swift
//  Brawl Stars
//
//  Created by Karsten Westra on 31/10/2022.
//

import UIKit

extension UIViewController {
    public func embed(child: UIViewController) {
        self.view.addSubview(child.view)
        self.addChild(child)
        child.didMove(toParent: self)
    }
}
