//
//  UIView+Extension.swift
//  JHCafe
//
//  Created by JH on 2022/10/23.
//

import UIKit

extension UIView {
	func addSubviews(_ views: UIView...) {
		views.forEach { addSubview($0) }
	}
}
