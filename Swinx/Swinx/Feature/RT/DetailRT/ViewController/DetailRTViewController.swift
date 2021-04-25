//
//  DetailRTViewController.swift
//  Swinx
//
//  Created by Any Ambria on 25/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class DetailRTViewController: UIViewController {
    var viewModel: DetailRTViewModel

    @IBOutlet weak var rtView: BaseView?
    
    init(viewModel: DetailRTViewModel) {
         self.viewModel = viewModel
         super.init(nibName: nil, bundle: nil)
     }
    
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rtView?.tableView?.delegate = self
        self.rtView?.tableView?.dataSource = self
        
        setView()
    }
    
    func setView() {
        self.rtView?.setup(title: viewModel.nameRT ?? "-",
                              description: viewModel.descriptionRT ?? "-",
                              subTitle: "Cordenadores",
                              subDescription: viewModel.coordinators ?? "-",
                              list: "Squads")
    }

}

extension DetailRTViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.squad?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.squad?[indexPath.row].nome
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailviewModel = DetailSquadViewModel(squad: self.viewModel.squad?[indexPath.row])
        let vc = DetailSquadViewController(viewModel: detailviewModel)
        self.navigationController?.pushViewController(vc, animated: true)
    }
   
}

