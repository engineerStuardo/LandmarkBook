//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Italo Stuardo on 22/3/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "Testing"
        
        var content = cell.defaultContentConfiguration()
        content.text = "Title"
        //ontent.secondaryText = "Subtitle"
        cell.contentConfiguration = content
        
        return cell
    }
}

