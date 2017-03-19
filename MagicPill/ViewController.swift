//
//  ViewController.swift
//  MagicPill
//
//  Created by Solomon Rajkumar on 15/03/17.
//  Copyright © 2017 Solomon Rajkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var states = ["Tamil Nadu", "Karnataka", "Kerala", "Andhra Pradesh"]
    
    @IBOutlet weak var stateButton: UIButton!
    
    @IBOutlet weak var statePicker: UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateButtonPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return states.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return states[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        stateButton.setTitle(states[row], for: .normal)
        statePicker.isHidden = true
        
    }

}

