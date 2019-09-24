//
//  DataService.swift
//  coder-swag
//
//  Created by Mahesh Prasad on 25/09/19.
//  Copyright © 2019 Mahesh Prasad. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(categoryTitle: "SHIRTS", imageName: "shirts.png"),
        Category(categoryTitle: "HOODIES", imageName: "hoodies.png"),
        Category(categoryTitle: "HATS", imageName: "hats.png"),
        Category(categoryTitle: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() ->[Category] {
        
        return categories
    }
}
