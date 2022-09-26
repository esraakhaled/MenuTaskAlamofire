//
//  ViewController+CollectionViewDelegate.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 16/09/2022.
//

import UIKit
import Alamofire

extension MenuViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        x = indexPath.row
        selectedItem = product?.product?[x].parentCategoryID ?? "4"
        callSubCategories(selectedItem: selectedItem)
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: false)
    }
}
