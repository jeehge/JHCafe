//
//  StoreCell.swift
//  JHCafe
//
//  Created by JH on 2022/11/06.
//

import UIKit
import SnapKit
import Then

final class StoreCell: UICollectionViewCell {
	
	// MARK: - Initialization
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}
	
	required override init(frame: CGRect) {
		super.init(frame: frame)
		initialize()
	}
	
	override func awakeFromNib() {
		super.awakeFromNib()
		initialize()
	}
	
	override func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		
		initialize()
	}
	
	// MARK: - Methods
	func initialize() {
		
	}
	
	func setCell() {
		
	}
}
