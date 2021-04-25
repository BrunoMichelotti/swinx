//
//  LeadViewController.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class LeadViewController: UIViewController {

    var viewModel: LeadViewModel
    
    @IBOutlet weak var tableView: UITableView?
    
    init(viewModel: LeadViewModel) {
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
        self.tableView?.tableFooterView = UIView()
        
        viewModel.fetchLeads()
    }

}

extension LeadViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.leads?.data?.leads?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.leads?.data?.leads?[indexPath.row].nome
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewModel = DetailLeadsViewModel(id: indexPath.row, lead: self.viewModel.leads)
        let vc = DetailLeadsViewController(viewModel: viewModel)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
