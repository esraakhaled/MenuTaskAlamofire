//
//  MenuViewController+swap.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 18/09/2022.
//

import UIKit

extension MenuViewController {
    func swap(){
        if x == product?.product?.count ?? 0 {
            x = product?.product?.count ?? 0
        }
        else {
            self.selectedItem = self.product?.product?[self.x].parentCategoryID ?? "26"
            collectionView.selectItem(at: IndexPath(row: x, section: 0), animated: true, scrollPosition: .centeredHorizontally)
            callSubCategories(selectedItem: selectedItem)
            DispatchQueue.main.async { [self] in
                self.collectionView.reloadData()
            }
            self.collectionView.scrollToItem(at: IndexPath(row: self.x, section: 0), at: .centeredHorizontally, animated: false)
        }
    }
}
