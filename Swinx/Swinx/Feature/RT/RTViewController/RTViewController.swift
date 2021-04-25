//
//  RTViewController.swift
//  Swinx
//
//  Created by Bruno Michelotti on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class RTViewController: UIViewController {
    var viewModel: RTViewModel
    
    @IBOutlet weak var tableView: UITableView!
    init(viewModel: RTViewModel) {
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
        self.viewModel.fetchRt()
        self.tableView.tableFooterView = UIView()
    }
}

extension RTViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.rtData?.data?.rts.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.rtData?.data?.rts[indexPath.row].nome
        return cell
    }
    
    
}
