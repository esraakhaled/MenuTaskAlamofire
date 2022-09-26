//
//  ViewController+CollectionViewDataSource.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 16/09/2022.
//

import Foundation
import UIKit

extension MenuViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product?.product?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ParentCategoryCell.identifier, for: indexPath) as! ParentCategoryCell
        if x == indexPath.row
        {
            cell.view.backgroundColor = UIColor.white
            cell.myLabel.textColor =  UIColor.black
            cell.view.layer.borderColor = UIColor(red: 211/255, green: 156/255, blue: 101/255, alpha: 1.0).cgColor
        }
        cell.configureCell(product: product?.product?[indexPath.row])
        return cell
    }
}
