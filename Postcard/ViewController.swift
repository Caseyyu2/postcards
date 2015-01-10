//
//  ViewController.swift
//  Postcard
//
//  Created by Casey Yu on 12/31/14.
//  Copyright (c) 2014 Casey Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messagelabel: UILabel!
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

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        //Display the nameLabel
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.orangeColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        //Display the text field 
        messagelabel.text = enterMessageTextField.text
        messagelabel.hidden = false
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
    }

}

