//
//  ViewController.swift
//  Postcard.Swift
//
//  Created by James Carney on 6/23/15.
//  Copyright (c) 2015 James Carney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // adding comment to tesh commits
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // unhides label when button is pressed
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.backgroundColor = UIColor.whiteColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        
        enterMessageTextField.text = ""
        // hides keyboard
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

