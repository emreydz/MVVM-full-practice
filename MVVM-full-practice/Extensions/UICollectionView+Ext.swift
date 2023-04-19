//
//  UICollectionView+Ext.swift
//  MVVM-full-practice
//
//  Created by Emre Yıldız on 19.04.2023.
//

import UIKit

extension UICollectionView {
    func reloadOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
