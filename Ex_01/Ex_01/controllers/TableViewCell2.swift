//
//  TableViewCell2.swift
//  Ex_01
//
//  Created by Admin on 25/08/2022.
//

import UIKit

class TableViewCell2: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var labelCell2: UILabel!
//    var model = [Model]()
    static let indentifier = "cell1"
    static func nib() -> UINib {
        return UINib(nibName: "cell1", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    public func Configure(with model : Model ){
//        self.labelCell2.text = model.text
//        self.ImageView.image = UIImage(named: model.image)
//    }
}
