//
//  FunctionaryViewController.swift
//  Swinx
//
//  Created by Bruno Michelotti on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class FunctionaryViewController: UIViewController {
    @IBOutlet weak var functionaryList: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.functionaryList?.delegate = self
        self.functionaryList?.dataSource = self
    }

}

extension FunctionaryViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "popular com funcionario"
        return cell
    }
    
    
}
