//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Mahesh Prasad on 24/09/19.
//  Copyright © 2019 Mahesh Prasad. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateView(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.categoryTitle
    }
}
