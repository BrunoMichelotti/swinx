//
//  HomeViewController.swift
//  Swinx
//
//  Created by Pedro Spim on 24/04/21.
//  Copyright © 2021 Swinx. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var viewModel : HomeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        
        // Do any additional setup after loading the view.
    }
    
    func setupCollectionView() {
        self.categoryCollectionView.dataSource = self
        self.categoryCollectionView.delegate = self
        self.categoryCollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "categoryCell")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize: CGRect = UIScreen.main.bounds
        
        if indexPath.row % 3 == 0 {
            return CGSize(width: screenSize.width/2.3, height:200)
        } else if  indexPath.row % 3 == 1 {
            return CGSize(width: screenSize.width/2.3, height:150)
        } else {
            return CGSize(width: screenSize.width/1 - 32, height:150)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(viewModel.categories[indexPath.row])
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCollectionViewCell
        cell.initCell(title: viewModel.categories[indexPath.row])
        return cell
    }
    
    
}
