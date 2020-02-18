//
//  ViewControllerExtensions.swift
//  SalesModule
//
//  Created by XCodeClub on 2020-02-16.
//  Copyright © 2020 XCodeClub. All rights reserved.
//
//MARK:-Modules
import UIKit

//MARK:-UITextFieldDelegate Extension
extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     textField.resignFirstResponder()
        return true
    }
    
}
//MARK:-UIPickerViewDelegate&DataSource
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3   }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if ubezpieczenieSelected == true {
            return data.celArray[row]
        } else {
            return data.cel2Array[row]
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if ubezpieczenieSelected == true {
            celUbezpieczeniaLbl.text =  data.celArray[row]
        } else {
            celKredytuLbl.text = data.cel2Array[row]
        }
    }
    
}
    
