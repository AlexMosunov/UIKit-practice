//
//  TestViewController.swift
//  tableView-lesson
//
//  Created by Alex Mosunov on 3/2/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import UIKit

class TestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
     let testData = ["💖 cat", "💖 dog", "💖 mouse", "💖 elephant", "💖 cat", "💖 dog", "💖 mouse", "💖 elephant", "💖 cat", "💖 dog", "💖 mouse", "💖 elephant", "💖 cat", "💖 dog", "💖 mouse", "💖 elephant", "💖 cat", "💖 dog", "💖 mouse", "💖 elephant"]
    
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testData.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell")!
        
        cell.textLabel?.text = testData[indexPath.row]
        
        return cell
     }
     

}
