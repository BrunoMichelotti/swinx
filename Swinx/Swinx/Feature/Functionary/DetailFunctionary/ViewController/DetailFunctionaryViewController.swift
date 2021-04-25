//
//  DetailFunctionaryViewController.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class DetailFunctionaryViewController: UIViewController {
    
    var viewModel: DetailFunctionaryViewModel
    
    @IBOutlet weak var tableView: UITableView?
    
    init(viewModel: DetailFunctionaryViewModel) {
         self.viewModel = viewModel
         super.init(nibName: nil, bundle: nil)
     }
    
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        
        self.tableView?.register(UINib(nibName: "DetailFunctionaryTableViewCell", bundle: nil), forCellReuseIdentifier: "DetailFunctionaryCell")
    }


}

extension DetailFunctionaryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.detailFunctionary.count 
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView?.dequeueReusableCell(withIdentifier: "DetailFunctionaryCell", for: indexPath) as? DetailFunctionaryTableViewCell ?? DetailFunctionaryTableViewCell()
        
        cell.titleLabel?.text = viewModel.detailFunctionary[indexPath.row].0
        cell.valueLabel?.text = viewModel.detailFunctionary[indexPath.row].1 as? String
        cell.secondTitleLabel?.text = viewModel.detailFunctionary[indexPath.row].2
        cell.secondValueLabel?.text = viewModel.detailFunctionary[indexPath.row].3 as? String
        
        cell.hiddenSecondView()
        
        return cell
    }
}
