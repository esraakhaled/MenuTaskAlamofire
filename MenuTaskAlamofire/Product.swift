//
//  Product.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 14/09/2022.
//

import Foundation

// MARK: - Products
struct Products: Codable {
    let product: [Product]?
    let success: Int?
}

// MARK: - Product
struct Product: Codable {
    let parentCategoryID, parentCategoryName, parentCategoryDesc: String?
    let parentCategoryImage: String?
    let type, arrangement, additionType, removesType: String?
    
    enum CodingKeys: String, CodingKey {
        case parentCategoryID = "parent_category_id"
        case parentCategoryName = "parent_category_name"
        case parentCategoryDesc = "parent_category_desc"
        case parentCategoryImage = "parent_category_image"
        case type, arrangement
        case additionType = "addition_type"
        case removesType = "removes_type"
    }
}

