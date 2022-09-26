//
//  ViewController+Delegate.swift
//  MenuTaskAlamofire
//
//  Created by Esraa Khaled   on 16/09/2022.
//

import UIKit


extension MenuViewController {
    @objc func swipedLeft(){
        if x < product?.product?.count ?? 0{
            self.x = x + 1
            swap()
        }
        else {
           x = product?.product?.count ?? 0
        }
    }
    @objc func swipedRight(){
        if x == 0 {
            x = 0
        }
        else {
            self.x =  x - 1
            swap()
        }
    }
}

