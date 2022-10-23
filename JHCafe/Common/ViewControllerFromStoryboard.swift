//
//  ViewControllerFromStoryboard.swift
//  JHCafe
//
//  Created by JH on 2022/10/23.
//

import UIKit

protocol ViewControllerFromStoryBoard { }

extension ViewControllerFromStoryBoard where Self: UIViewController {
	static func viewController(from storyboardName: StoryboardName) -> Self {
		guard let viewController: Self = UIStoryboard(name: storyboardName.rawValue, bundle: nil).instantiateViewController(withIdentifier: String(describing: Self.self)) as? Self else { return Self() }
		return viewController
	}
}
