//
//  SubProduct.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 15/09/2022.


import Foundation

// MARK: - SubProducts
struct SubProducts: Codable {
    let product: [SubProduct]?
    let success: Int?
}

// MARK: - Product
struct SubProduct: Codable {
    let type, subCategoryID, subCategoryName, subCategoryDesc: String?
    let subCategoryImage: String?
    let discount, parentCategoryID, additionType, removesType: String?
    let subCategoryFav: Int?
    let evaluate: Double?
    let sizes: [Size]?
    
    enum CodingKeys: String, CodingKey {
        case type
        case subCategoryID = "sub_category_id"
        case subCategoryName = "sub_category_name"
        case subCategoryDesc = "sub_category_desc"
        case subCategoryImage = "sub_category_image"
        case discount
        case parentCategoryID = "parent_category_id"
        case additionType = "addition_type"
        case removesType = "removes_type"
        case evaluate
        case subCategoryFav = "sub_category_fav"
        case sizes
    }
}

// MARK: - Size
struct Size: Codable {
    let subCategorySizePriceID, subCategorySizeName, discount, subCategorySizePriceAfterDisc: String?
    let subCategorySizePrice: String?
    
    enum CodingKeys: String, CodingKey {
        case subCategorySizePriceID = "sub_category_size_price_id"
        case subCategorySizeName = "sub_category_size_name"
        case discount
        case subCategorySizePriceAfterDisc = "sub_category_size_price_after_disc"
        case subCategorySizePrice = "sub_category_size_price"
    }
}
