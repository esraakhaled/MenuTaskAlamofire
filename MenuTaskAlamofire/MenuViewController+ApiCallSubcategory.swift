//
//  MenuViewController+ApiCall.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 18/09/2022.
//

import UIKit
import Alamofire

extension MenuViewController {
    
    func callSubCategories(selectedItem: String) {
        let paramGet = [
            "parent_category_id": "\(self.selectedItem)",
            "lang": "en"
        ]
        NetworkCall.shared.fetchData(url: URLs.shared.getURL(for: .getSubProducts), method: .get, encoding: URLEncoding.default, parameters: paramGet, headers: nil) { (result: Result<SubProducts,Error>) in
            switch result{
            case .success(let get):
                self.subProducts = get
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
}

