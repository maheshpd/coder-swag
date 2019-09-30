//
//  ProductVC.swift
//  coder-swag
//
//  Created by Mahesh Prasad on 30/09/19.
//  Copyright © 2019 Mahesh Prasad. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.categoryTitle)
        navigationItem.title = category.categoryTitle
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductDell {
        let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductDell()
    }
}
