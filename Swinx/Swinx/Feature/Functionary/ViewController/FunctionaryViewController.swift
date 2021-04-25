//
//  FunctionaryViewController.swift
//  Swinx
//
//  Created by Bruno Michelotti on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class FunctionaryViewController: UIViewController {
    
    var viewModel : FunctionaryViewMode
    
    @IBOutlet weak var functionaryList: UITableView?
    
    init(viewModel: FunctionaryViewMode) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.functionaryList?.delegate = self
        self.functionaryList?.dataSource = self
        self.functionaryList?.tableFooterView = UIView()
        viewModel.fetchFunctionary()
    }

}

extension FunctionaryViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.functionaries?.data?.funcionarios?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "popular com funcionario"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailFunctionaryViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
