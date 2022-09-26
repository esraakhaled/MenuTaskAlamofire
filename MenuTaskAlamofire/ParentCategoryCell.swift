//
//  MyCollectionViewCell.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 14/09/2022.
//

import UIKit

class ParentCategoryCell: UICollectionViewCell {
    
    //MARK: -IBOutlets
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var myLabel: UILabel!
    //MARK: -Constants
    static let identifier = "ParentCategoryCell"
    //MARK: -Variables
    override var isSelected: Bool {
        didSet {
            UIView.animate(withDuration: 0.3) {
                self.view.backgroundColor = self.isSelected ? .white : UIColor(red: 211/255, green: 156/255, blue: 101/255, alpha: 1.0)
                self.myLabel.textColor = self.isSelected ? .black : .white
                self.view.layer.borderColor = self.isSelected ? UIColor(red: 211/255, green: 156/255, blue: 101/255, alpha: 1.0).cgColor : UIColor.gray.cgColor
            }
        }
    }
    //MARK: -Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        view.layer.cornerRadius = 20
        view.layer.borderWidth = 0.25
        view.clipsToBounds = true
        view.layer.borderColor = UIColor.gray.cgColor
        
    }
    //MARK: - Functions
    static func nib() -> UINib {
        return UINib(nibName: "ParentCategoryCell", bundle: nil)
    }
    func configureCell(product: Product?) {
        myLabel.text = product?.parentCategoryName
    }
}
