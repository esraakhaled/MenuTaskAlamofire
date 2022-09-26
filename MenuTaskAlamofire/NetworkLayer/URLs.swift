//
//  URLs.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 15/09/2022.
//

import Foundation

final class URLs {
    //MARK: -Constants
    static let shared = URLs()
    
    //MARK: -Initializers
    private init() {}
    
    //MARK: -Variables
    private var baseURL = "http://almanarbakeryapp.com/system/api/"
    
    //MARK: -Enum
    enum Services: String {
        
        case getProducts = "get-parent-categories.php"
        case getSubProducts = "get-sub-categories.php"
    }
    //MARK: -Functions
    func getURL(for service: Services) -> String {
        return baseURL + service.rawValue
    }
}
