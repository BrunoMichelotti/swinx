//
//  DetailFunctionaryTableViewCell.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class DetailFunctionaryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleView: UIView?
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var valueLabel: UILabel?
    @IBOutlet weak var secondTitleView: UIView?
    @IBOutlet weak var secondTitleLabel: UILabel?
    @IBOutlet weak var secondValueLabel: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func hiddenSecondView() {
        secondTitleView?.isHidden = secondTitleLabel?.text?.isEmpty ?? true
    }
}
