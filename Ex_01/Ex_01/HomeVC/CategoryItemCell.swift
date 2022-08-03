//
//  CategoryItemCell.swift
//  Ex_01
//
//  Created by Quốc Toàn Nguyễn on 03/08/2022.
//

import UIKit

class CategoryItemCell: UICollectionViewCell {
    @IBOutlet weak var selectedView: UIView!
    @IBOutlet weak var itemContainerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    private func setupUI() {
        itemContainerView.layer.cornerRadius = 33
        itemContainerView.layer.borderColor = UIColor.gray.cgColor
        itemContainerView.layer.borderWidth = 1
        selectedView.layer.cornerRadius = 25
    }
}
