//
//  ViewController.swift
//  Ex_01
//
//  Created by Admin on 02/08/2022.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var collectionView: UICollectionView!
    private var lastSelectedIndex: IndexPath?
    
    let data = ["ic_cocktail","ic_cup_coffee","ic_fish","ic_humberger","ic_small_bell"]
    let insetsSession = UIEdgeInsets(top: 50, left: 20, bottom: 50, right: 20)
    let itemPerRow : CGFloat = 5.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.contentInset.left = 24
        print("toi la tri")
        collectionView.register(UINib(nibName: "CategoryItemCell", bundle: nil), forCellWithReuseIdentifier: "CategoryItemCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryItemCell", for: indexPath) as! CategoryItemCell
        return cell
    }
    //set size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 66, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) as? CategoryItemCell
        else {
            return
        }
        
        cell.selectedView.backgroundColor = .yellow
        
        if let lastSelectedIndex = lastSelectedIndex,
           lastSelectedIndex != indexPath,
           let lastCell = collectionView.cellForItem(at: lastSelectedIndex) as? CategoryItemCell  {
            lastCell.selectedView.backgroundColor = .white
        }
        
        self.lastSelectedIndex = indexPath
    }
}
