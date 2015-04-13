//
//  ViewController.swift
//  Controlling the Keyboard
//
//  Created by Chad Duffey on 9/04/2015.
//  Copyright (c) 2015 Chad Duffey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var lbl: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
            lbl.text = textInput.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.textInput.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

