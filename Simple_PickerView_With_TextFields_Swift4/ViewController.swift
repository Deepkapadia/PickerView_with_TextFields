//
//  ViewController.swift
//  Simple_PickerView_With_TextFields_Swift4
//
//  Created by DeEp KapaDia on 19/05/18.
//  Copyright © 2018 DeEp KapaDia. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    @IBOutlet weak var TextField: UITextField!
    
    let Names = ["Deep Kapadia","Parh Goswami","Manan Jadia","Vishnu Dhebriwala","Parth Rashiwala"]
    
    var pickerview = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        TextField.inputView = pickerview
        TextField.textAlignment = .center
        TextField.placeholder = "Select Your Name"
        
        pickerview.delegate = self
        pickerview.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Names.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Names[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        TextField.text = Names[row]
    }
    
}

