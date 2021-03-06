//
//  BeerVC.swift
//  HopStop
//
//  Created by Ethan Haley on 2/29/16.
//  Copyright © 2016 Ethan Haley. All rights reserved.
//

import UIKit

//This UIViewController subclass is just a sort of base UIViewController specific to this app's UI needs
class BeerVC: UIViewController, UITextFieldDelegate {
    // Will be used to end editing and remove keyboard
    var tapRecognizer: UITapGestureRecognizer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showBackgroundBeer()
        
        // Set up the tap recognizer
        tapRecognizer = UITapGestureRecognizer(target: self, action: "handleTap")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        view.addGestureRecognizer(tapRecognizer!)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        view.removeGestureRecognizer(tapRecognizer!)
    }
    
    // Remove the keyboard by tapping on the view (method called by tapRecognizer)
    func handleTap() {
        view.endEditing(true)
    }
    // Remove the keyboard by hitting RETURN key (method called by textFieldDelegate: self)
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}

