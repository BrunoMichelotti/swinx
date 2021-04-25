//
//  DetailSquadViewController.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class DetailSquadViewController: UIViewController {
    
    var viewModel: DetailSquadViewModel

    @IBOutlet weak var squadView: BaseView?
    
    init(viewModel: DetailSquadViewModel) {
         self.viewModel = viewModel
         super.init(nibName: nil, bundle: nil)
     }
    
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.squadView?.tableView?.delegate = self
        self.squadView?.tableView?.dataSource = self
        
        setView()
    }
    
    func setView() {
        self.squadView?.setup(title: viewModel.nameSquad ?? "-",
                              description: viewModel.descriptionSquad ?? "-",
                              subTitle: "Tríade",
                              subDescription: viewModel.triade ?? "-",
                              list: "Funcionários everis")
    }

}

extension DetailSquadViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.functionary?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.functionary?[indexPath.row].nome
        
        return cell
    }
   
}
