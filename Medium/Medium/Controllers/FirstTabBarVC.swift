//
//  FirstTabBarVC.swift
//  Medium
//
//  Created by Onur Başdaş on 6.02.2022.
//

import UIKit

class FirstTabBarVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var firstTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Medium"
        return cell
    }
}
