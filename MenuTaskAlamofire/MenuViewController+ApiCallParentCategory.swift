//
//  MenuViewController+ApiCallParentCategory.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 18/09/2022.
//

import UIKit
import Alamofire

extension MenuViewController {
    
    func callParentCategories() {
        let paramGet = [
            "lang":"en"
        ]
        NetworkCall.shared.fetchData(url: URLs.shared.getURL(for: .getProducts), method: .get, encoding: URLEncoding.default, parameters: paramGet, headers: nil) { (result: Result<Products,Error>) in
            switch result{
            case .success(let get):
                self.product = get
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
}

