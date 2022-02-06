//
//  SecondTabBarVC.swift
//  Medium
//
//  Created by Onur Başdaş on 6.02.2022.
//

import UIKit

class SecondTabBarVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var secondCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = secondCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}
