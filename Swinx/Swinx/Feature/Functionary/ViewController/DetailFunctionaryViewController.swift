//
//  DetailFunctionaryViewController.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class DetailFunctionaryViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        
        self.tableView?.register(UINib(nibName: "DetailFunctionaryTableViewCell", bundle: nil), forCellReuseIdentifier: "DetailFunctionaryCell")
    }


}

extension DetailFunctionaryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView?.dequeueReusableCell(withIdentifier: "DetailFunctionaryCell", for: indexPath) as? DetailFunctionaryTableViewCell ?? DetailFunctionaryTableViewCell()
        
        cell.titleLabel?.text = "teste"
        cell.valueLabel?.text = "value"
//        cell.secondTitleLabel?.text = "teste 2"
//        cell.secondValueLabel?.text = "-"
        
        cell.hiddenSecondView()
        
        return cell
    }
}
