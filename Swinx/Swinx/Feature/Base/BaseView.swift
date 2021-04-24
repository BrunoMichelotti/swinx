//
//  BaseView.swift
//  Swinx
//
//  Created by Any Ambria on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class BaseView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var descriptionLabel: UILabelPadding?
    @IBOutlet weak var subTitleLabel: UILabel?
    @IBOutlet weak var subDescriptionLabel: UILabelPadding?
    @IBOutlet weak var listLabel: UILabel?
    @IBOutlet weak var tableView: UITableView?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        setBorder()
        self.addSubview(view)
    }
    
    func setBorder() {
        descriptionLabel?.layer.borderColor = UIColor.darkGray.cgColor
        descriptionLabel?.layer.borderWidth = 2.0
        descriptionLabel?.layer.cornerRadius = 8
        
        subDescriptionLabel?.layer.borderColor = UIColor.darkGray.cgColor
        subDescriptionLabel?.layer.borderWidth = 2.0
        subDescriptionLabel?.layer.cornerRadius = 8
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: "BaseView", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    func setup(title: String, description: String,
               subTitle: String, subDescription: String, list: String) {
        
        titleLabel?.text = title
        descriptionLabel?.text = description
        
        subTitleLabel?.text = subTitle
        subDescriptionLabel?.text = subDescription
        
        listLabel?.text = list
    }
}
