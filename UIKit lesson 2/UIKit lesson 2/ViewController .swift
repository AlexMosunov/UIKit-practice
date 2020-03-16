//
//  ViewController.swift
//  UIKit lesson 2
//
//  Created by Alex Mosunov on 3/4/20.
//  Copyright © 2020 Alex Mosunov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        
        textView.isHidden = true
        textView.alpha = 0
        
//        textView.text = ""
        
        textView.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 17)
        textView.backgroundColor = self.view.backgroundColor
        
        textView.layer.cornerRadius = 10
        
        stepper.value = 17
        stepper.minimumValue = 10
        stepper.maximumValue = 25
        
        stepper.tintColor = .white
        stepper.backgroundColor = .gray
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        activityIndicator.startAnimating()
        
        
        UIView.animate(withDuration: 2, delay: 3, options: .curveEaseIn, animations: {
            self.textView.alpha = 1
        }) { (finished) in
            self.activityIndicator.stopAnimating()
            self.textView.isHidden = false
        }
        
//        // отслеживаем появление клавиатуры
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(updateTextView(notification:)),
//                                               name: Notification.Name.UIKeyboardWillChangeFrame,
//                                               object: nil)
//        
//        
//        // отслеживаем сскрытие клавиатуры
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(updateTextView(notification:)),
//                                               name: Notification.Name.UIKeyboardWillHide,
//                                               object: nil)
    }
    
    
    @IBAction func fontSizeChanged(_ sender: UIStepper) {
        
        let font = textView.font?.fontName
        let fontSize = CGFloat(sender.value)
        
        textView.font = UIFont(name: font!, size: fontSize)
    }
    
    
    
    
    // hide keyboard when tap on a screen outside textview
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.view.endEditing(true) // hide keyboard for any object
        
//        textView.resignFirstResponder() // hide keyboard for a particular object
    }
    


}

extension ViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.backgroundColor = .white
        textView.textColor = .gray
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        textView.backgroundColor = self.view.backgroundColor
        textView.textColor = .black
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        countLabel.text = "\(textView.text.count)"
        return textView.text.count + (text.count - range.length) <= 60
    }
}

