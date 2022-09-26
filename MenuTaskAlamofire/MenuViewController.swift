//
//  ViewController.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 14/09/2022.
//

import UIKit
import Alamofire


class MenuViewController: UIViewController {
    
    //MARK: -IBOulets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    //MARK: - Variables
    var product: Products?
    var subProducts: SubProducts?
    var selectedItem = "26"
    var x = 0
    //MARK: -Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureCollectionView()
        callParentCategories()
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipedRight))
        swipeRight.direction = .right
        self.tableView.addGestureRecognizer(swipeRight)
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipedLeft))
        swipeLeft.direction = .left
        self.tableView.addGestureRecognizer(swipeLeft)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = UIColor.white
        setTitle("Menu", andImage: UIImage(named: "Cart")!)
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .brandPrimary
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
    }
    //MARK: - Functions
    private func configureTableView() {
        tableView.register(SubCategoryCell.nib(), forCellReuseIdentifier: SubCategoryCell.identifier)
        tableView.dataSource = self
    }
    private func configureCollectionView() {
        collectionView.register(ParentCategoryCell.nib(), forCellWithReuseIdentifier: ParentCategoryCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.allowsMultipleSelection = false
    }
}
extension UIViewController {
    func setTitle(_ title: String, andImage image: UIImage) {
        let titleLbl = UILabel()
        titleLbl.text = title
        titleLbl.textColor = UIColor.white
        titleLbl.font = UIFont.systemFont(ofSize: 20.0, weight: .regular)
        let imageView = UIImageView(image: image)
        let titleView = UIStackView(arrangedSubviews: [ titleLbl,imageView])
        titleView.axis = .horizontal
        titleView.spacing = 5.0
        navigationItem.titleView = titleView
    }
}
