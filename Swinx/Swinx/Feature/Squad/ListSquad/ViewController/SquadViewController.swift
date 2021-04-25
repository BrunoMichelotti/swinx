//
//  SquadViewController.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class SquadViewController: UIViewController {
    var viewModel: SquadViewModel
    
    @IBOutlet weak var tableView: UITableView?
    
    init(viewModel: SquadViewModel) {
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
        self.viewModel.fetchSquad()
    }

}

extension SquadViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.squads?.data?.squad?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.squads?.data?.squad?[indexPath.row].nome as? String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewModel = DetailSquadViewModel(id: indexPath.row, squad: self.viewModel.squads)
        let vc = DetailSquadViewController(viewModel: viewModel)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
