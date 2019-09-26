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
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodie Black", price: "$32", imageName: "hoodie04.png"),
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Logo Badge Shirt Light Grey", price: "$32", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$32", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$32", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$32", imageName: "shirt04.png"),
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() ->[Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) ->[Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() ->[Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
