//
//  ViewController.swift
//  Medium
//
//  Created by Onur Başdaş on 23.01.2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    @IBOutlet var learnCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnCollectionView.delegate = self
        learnCollectionView.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = learnCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }

}

