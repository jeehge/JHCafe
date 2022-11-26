//
//  MainViewController.swift
//  JHCafe
//
//  Created by JH on 2022/10/25.
//

import UIKit

final class MainViewController: BaseViewController {
	
	// MARK: UI
	private lazy var collectionView = UICollectionView().then {
		$0.dataSource = self
		$0.delegate = self
		$0.register(StoreCell.self, forCellWithReuseIdentifier: StoreCell.identifier)
	}
	
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoreCell.identifier, for: indexPath) as! StoreCell
		return cell
	}
}
