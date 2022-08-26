//
//  TableViewCell1.swift
//  Ex_01
//
//  Created by Admin on 25/08/2022.
//

import UIKit

class TableViewCell1: UICollectionViewCell {
    
    
    @IBOutlet weak var collectionViewCell1: UICollectionView!
    
    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var label1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewCell1.register(UINib(nibName: "collectionViewCell1", bundle: nil), forCellWithReuseIdentifier: "collectionViewCell1")
//        collectionViewCell1.delegate = self
//        collectionViewCell1.dataSource = self
        setupUI()
        // Initialization code
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    private func setupUI() {
        ContainerView.layer.borderColor = UIColor.gray.cgColor
        ContainerView.layer.borderWidth = 1
        ContainerView.backgroundColor = UIColor.green
    }
    
}
