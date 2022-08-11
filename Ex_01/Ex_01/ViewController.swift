//
//  ViewController.swift
//  Ex_01
//
//  Created by Admin on 02/08/2022.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet var viewAmount: [UIView]!
    @IBOutlet weak var labelAmount: UILabel!
    @IBOutlet weak var labelSumMoney: UILabel!
    @IBOutlet weak var addNew: UIButton!
    private var lastSelectedIndex: IndexPath?
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var ic_hambeger: UIImageView!
    @IBOutlet weak var ic_hambeger1: UIImageView!
    private var plusActive: IndexPath?

    
    let data = ["ic_cocktail","ic_cup_coffee","ic_fish","ic_humberger","ic_small_bell"]
    let insetsSession = UIEdgeInsets(top: 50, left: 20, bottom: 50, right: 20)
    let itemPerRow : CGFloat = 5.0
    var amount : Int = 1
    var cost : Float = 9.50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        addNew.layer.cornerRadius = 30
        ic_hambeger.layer.borderWidth = 1.0
        ic_hambeger.layer.borderColor = UIColor.gray.cgColor
//        ic_hambeger.layer.backgroundColor = CGColor
        ic_hambeger.clipsToBounds = true
        addNew.clipsToBounds = true
//        cardView.layer.cornerRadius.round
        collectionView.contentInset.left = 24
        collectionView.contentInset.right = 24
        collectionView.register(UINib(nibName: "CategoryItemCell", bundle: nil), forCellWithReuseIdentifier: "CategoryItemCell")
        
    }
//    @IBAction func collectionPlus(_ sender: UIButton) {
//        if  let collectionPlus1 =  collectionPlus, collectionPlus1 = IndexPath {
//            amount = amount + 1
//            labelSumMoney.text = amount * cost
//        }
//        labelSumMoney.text = cost
//    }
    
    @IBAction func collecttionMinus(_ sender: UIButton) {
        
    }
    @IBAction func collectionAdd(_ sender: UIButton) {
        
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
        cell.itemContainerView.layer.borderColor = UIColor.green.cgColor
        
        if let lastSelectedIndex = lastSelectedIndex,
           lastSelectedIndex != indexPath,
           let lastCell = collectionView.cellForItem(at: lastSelectedIndex) as? CategoryItemCell  {
            lastCell.selectedView.backgroundColor = .white
            lastCell.itemContainerView.layer.borderColor = UIColor.gray.cgColor
            
        }
        
        self.lastSelectedIndex = indexPath
    }
}
