//
//  TestTableViewController.swift
//  tableView-lesson
//
//  Created by Alex Mosunov on 3/2/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController {
    
    let testData = ["cat", "dog", "mouse", "elephant"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return testData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell", for: indexPath) as! TestTableViewCell

        cell.textLabel?.text = testData[indexPath.row]

        return cell
    }



}
