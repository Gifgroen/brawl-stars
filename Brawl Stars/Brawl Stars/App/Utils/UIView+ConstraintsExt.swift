//
//  UIView+ConstraintsExt.swift
//  Brawl Stars
//
//  Created by Karsten Westra on 31/10/2022.
//

import UIKit

extension UIView {
    public func constrain(to parent: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
            self.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
        ])
    }
}
