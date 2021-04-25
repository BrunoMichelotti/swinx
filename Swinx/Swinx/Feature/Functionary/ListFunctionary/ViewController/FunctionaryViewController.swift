//
//  FunctionaryViewController.swift
//  Swinx
//
//  Created by Bruno Michelotti on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class FunctionaryViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var functionaryList: UITableView?
    
    var viewModel : FunctionaryViewModel
    var filteredData: Bool = false
    
    init(viewModel: FunctionaryViewModel) {
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
        self.searchBar.delegate = self
        viewModel.fetchFunctionary()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchText == ""{
            filteredData = false
            viewModel.fetchFunctionary()
        }else{
            filteredData = true
            viewModel.fechtFunctionaryFilter(filter: searchText)
        }
        functionaryList?.reloadData()
    }
}

extension FunctionaryViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if filteredData{
            return viewModel.functionariesArray.count ?? 0
        }
        return viewModel.functionaries?.data?.funcionarios?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if filteredData{
            let functionaryData = viewModel.functionariesArray[indexPath.row]
            cell.textLabel?.text = functionaryData.nome
            return cell
        }
        let functionaryData = viewModel.functionaries?.data?.funcionarios?[indexPath.row]
        cell.textLabel?.text = functionaryData?.nome
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if filteredData{
            let viewModel = DetailFunctionaryViewModel(functionary: self.viewModel.functionariesArray[indexPath.row])
            let vc = DetailFunctionaryViewController(viewModel: viewModel)
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            let viewModel = DetailFunctionaryViewModel(functionary: self.viewModel.functionaries?.data?.funcionarios?[indexPath.row])
            let vc = DetailFunctionaryViewController(viewModel: viewModel)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
