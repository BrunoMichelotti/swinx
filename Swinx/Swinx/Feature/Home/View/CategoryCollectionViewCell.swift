//
//  CategoryCollectionViewCell.swift
//  Swinx
//
//  Created by Pedro Spim on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var bgCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgCell.layer.cornerRadius = 10
        bgCell.layer.shadowColor = UIColor.black.cgColor
        bgCell.layer.shadowOpacity = 0.8
        bgCell.layer.shadowOffset = .init(width: 2, height: 2)
        bgCell.layer.shadowRadius = 5
    }

}
