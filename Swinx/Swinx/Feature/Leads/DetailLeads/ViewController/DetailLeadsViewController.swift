//
//  DetailLeadsViewController.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class DetailLeadsViewController: UIViewController {
    
    var viewModel: DetailLeadsViewModel
    
    @IBOutlet weak var detailView: BaseView?
    
    init(viewModel: DetailLeadsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detailView?.tableView?.delegate = self
        self.detailView?.tableView?.dataSource = self
        setView()
    }
    
    func setView() {
        self.detailView?.setup(title: viewModel.nameLead ?? "-",
                               description: viewModel.descriptionLead ?? "-",
                               subTitle: "Reporta-se à",
                               subDescription: viewModel.reported ?? "-",
                               list: "Funcionários Subordinados")
    }
    
}

extension DetailLeadsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.functionary?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.functionary?[indexPath.row].nome
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewModel = DetailFunctionaryViewModel(functionary: self.viewModel.functionary?[indexPath.row])
        let vc = DetailFunctionaryViewController(viewModel: viewModel)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
