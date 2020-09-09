//
//  MyCollectionViewCell.swift
//  CollectionCell
//
//  Created by Wael Moharram on 6/16/20.
//  Copyright © 2020 aya fathy. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    static func nib()-> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
   public func configure(item: Model) {
        self.myLabel.text = item.text
        self.myImage.image = UIImage(named: item.image)
    }

}
