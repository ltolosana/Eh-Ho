//
//  UITableViewCellExtension.swift
//  Eh-Ho
//
//  Created by Luis Maria Tolosana Simon on 22/07/2019.
//  Copyright © 2019 Luis Maria Tolosana Simon. All rights reserved.
//

import UIKit

protocol ReusableCell {
    static var identifier: String { get }
}

extension ReusableCell {
    static var identifier: String {
        return "\(self)"
    }
}

extension UICollectionViewCell: ReusableCell {}
extension UITableViewCell: ReusableCell {}
extension UITableViewHeaderFooterView: ReusableCell {}

