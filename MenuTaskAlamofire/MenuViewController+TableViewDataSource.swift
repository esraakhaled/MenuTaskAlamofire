//
//  ViewController+DataSource.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 16/09/2022.
//

import UIKit
import SDWebImage

extension MenuViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subProducts?.product?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SubCategoryCell.identifier, for: indexPath) as! SubCategoryCell
        cell.configureCell(product: subProducts?.product?[indexPath.row])
        return cell
    }
}
