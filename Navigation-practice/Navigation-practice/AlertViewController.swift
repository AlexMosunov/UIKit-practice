//
//  AlertViewController.swift
//  Navigation-practice
//
//  Created by Alex Mosunov on 3/4/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    @IBAction func alertButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Attack begins!", message: "The troops have been sent", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
    }
    

}
