//
//  ViewControllerFunctions.swift
//  SalesModule
//
//  Created by XCodeClub on 2020-02-17.
//  Copyright © 2020 XCodeClub. All rights reserved.
//

//MARK:-Modules
import UIKit

//MARK:-Extension
extension ViewController {
    
    //MARK:-UI customization
       func uiCustomization(){
           popUpView.layer.cornerRadius = 5
           popUpView.layer.shadowColor = UIColor.black.cgColor
           popUpView.layer.shadowOffset = .zero
           popUpView.layer.shadowOpacity = 0.5
           popUpView.layer.shadowRadius = 5
           popUpView.layer.shouldRasterize = true
           popUpView.backgroundColor = .white
           tf1.delegate = self
           tf2.delegate = self
           tf3.delegate = self
           tf4.delegate = self
           tf5.delegate = self
           pickerView.delegate = self
    }
    
    //MARK:-Functions
    func showPopUp(){
        UIView.animate(withDuration: 1) {
           self.popUpShift.constant += 1000
             self.view.layoutIfNeeded()
            self.celKredytuBTN.isEnabled = false
            self.celUbezpieczeniaBTN.isEnabled = false
        }
    }
    
    func hidePopUp(){
        UIView.animate(withDuration: 1) {
           self.popUpShift.constant -= 1000
             self.view.layoutIfNeeded()
            self.celKredytuBTN.isEnabled = true
            self.celUbezpieczeniaBTN.isEnabled = true
        }
    }
    
    func save() {
        data = Model(cel1: celUbezpieczeniaLbl.text,
        wysokość: tf1.text ?? "",
        cel2: celKredytuLbl.text,
        nazwa: tf2.text ?? "",
        rodzaj: tf3.text ?? "",
        suma: tf4.text ?? "",
        data: tf5.text ?? "")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seg" {
            if let vc = segue.destination as? ViewController2 {
                vc.data = data
            }
        }
    }
    
    func keyboardNotifications(){
        NotificationCenter.default.addObserver(self, selector: #selector(changeSizePlus), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(changeSizeMinus), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    //MARK:-Selectors
    @objc func changeSizePlus(){
        self.topConstraint.constant = -130
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
    }
    
    @objc func changeSizeMinus(){
        self.topConstraint.constant = +130
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
                     }
          }

}
