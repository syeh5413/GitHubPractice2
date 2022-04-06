//
//  ViewController.swift
//  GitHubPractice2
//
//  Created by Sam Yeh on 4/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBAction weak var tableView: UITableView!
    var animals = ["chickn", "dog", "sheep"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = animals[indexPath.row]
        return cell
    }

}

