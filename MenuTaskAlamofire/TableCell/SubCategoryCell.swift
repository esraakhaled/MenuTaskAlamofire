//
//  ItemTableViewCell.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 14/09/2022.
//

import UIKit
import SDWebImage

class SubCategoryCell: UITableViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var sweetImage: UIImageView!
    @IBOutlet weak var sweetName: UILabel!
    @IBOutlet weak var sweetPrice: UILabel!
    
    //MARK: - Constants
    static let identifier = "SubCategoryCell"
    
    //MARK: -Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    //MARK: -Functions
    static func nib() -> UINib {
        return UINib(nibName: "SubCategoryCell", bundle: nil)
    }
    func configureCell(product: SubProduct?) {
        if let imgStr = product?.subCategoryImage {
            sweetImage.sd_imageIndicator = SDWebImageActivityIndicator.gray
            sweetImage.sd_setImage(with: URL(string: imgStr), placeholderImage: UIImage(named: "Cart"))
        }
        sweetImage.layer.cornerRadius = 15.0
        sweetPrice.text = (product?.sizes![0].subCategorySizePrice)! + " BHD"
        
        sweetName.text = product?.subCategoryName
    }
    //MARK: -IBActions
    @IBAction func isFav(_ sender: Any) {
    }
}
