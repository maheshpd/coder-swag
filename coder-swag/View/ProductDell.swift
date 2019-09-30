//
//  ProductDell.swift
//  coder-swag
//
//  Created by Mahesh Prasad on 27/09/19.
//  Copyright © 2019 Mahesh Prasad. All rights reserved.
//

import UIKit

class ProductDell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
