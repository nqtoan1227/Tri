//
//  ButtonSetup.swift
//  Ex_01
//
//  Created by Admin on 09/08/2022.
//

import UIKit

class ButtonSetup: UIButton {
    override init(frame: CGRect){
        super.init(frame: frame)
        setRadius()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRadius()
    }
    func setRadius(){
       layer.cornerRadius = 25
       layer.borderWidth = 2
       layer.borderColor = UIColor.gray.cgColor
       clipsToBounds = true
    }
    

}
