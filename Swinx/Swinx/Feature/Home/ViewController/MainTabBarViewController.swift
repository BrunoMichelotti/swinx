//
//  MainTabBarViewController.swift
//  Swinx
//
//  Created by Pedro Spim on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCS()
    }

    
    func setupVCS(){
        
        viewControllers = [createNavController(for: HomeViewController(), title: "Categorias", image: UIImage(systemName: "house")!),
                           createNavController(for: FunctionaryViewController(viewModel: FunctionaryViewMode()), title: "Funcionários", image: UIImage(systemName: "person")!)
                           
        ]
    }

    fileprivate func createNavController(for rootViewController: UIViewController,
                                                    title: String,
                                                    image: UIImage) -> UIViewController {
          let navController = UINavigationController(rootViewController: rootViewController)
          navController.tabBarItem.title = title
          navController.tabBarItem.image = image
          navController.navigationBar.prefersLargeTitles = true
          return navController
      }

}
