//
//  UIView+Ex.swift
//  NewsApp
//
//  Created by Marat Cherkasov on 01.05.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { view in
            addSubview(view)
        }
    }
}
