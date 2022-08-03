//
//  ViewController.swift
//  Ex_01
//
//  Created by Admin on 02/08/2022.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var View_Button: UIButton!
    
    let data = ["ic_cocktail","ic_cup_coffee","ic_fish","ic_humberger","ic_small_bell"]
    let insetsSession = UIEdgeInsets(top: 50, left: 20, bottom: 50, right: 20)
    let itemPerRow : CGFloat = 5.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        print("toi la tri")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.ic_nv.image = UIImage(named:data[indexPath.row])
        cell.backgroundColor = .orange
        return cell
    }
    //set size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpacing = CGFloat((itemPerRow + 1)) * insetsSession.left
        let availabelWidth = view.frame.width - paddingSpacing
        let width = availabelWidth / itemPerRow
        return CGSize(width: width, height: width)
    }
    //insetsSession
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        insetsSession
    }
    //khoang trang
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        insetsSession.left
    }
//    button.layer.cornerRadius = 10.0
}
