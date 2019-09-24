//
//  Category.swift
//  coder-swag
//
//  Created by Mahesh Prasad on 25/09/19.
//  Copyright © 2019 Mahesh Prasad. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var categoryTitle:String
    private(set)  public var imageName:String
    
    init(categoryTitle: String, imageName: String) {
        self.categoryTitle = categoryTitle
        self.imageName = imageName
    }
}
