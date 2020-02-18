//
//  UIViewSubclass.swift
//  SalesModule
//
//  Created by XCodeClub on 2020-02-18.
//  Copyright © 2020 XCodeClub. All rights reserved.
//

import UIKit

class UIViewSubclass: UIView {

  
    override init(frame: CGRect) {
           super.init(frame: frame)
       }
       
       required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    
    
    
     let btn: UIButton = {
         let btn = UIButton()
         btn.translatesAutoresizingMaskIntoConstraints = false
         btn.setTitle("X", for: .normal)
         btn.backgroundColor = UIColor.red
         btn.layer.cornerRadius = 25
         btn.layer.shadowColor = UIColor.black.cgColor
         btn.layer.shadowOffset = .zero
         btn.layer.shadowOpacity = 0.5
         btn.layer.shadowRadius = 5
         return btn
     }()
     
     let inputViefourth: UIView = {
         let inputVie = UIView()
         inputVie.translatesAutoresizingMaskIntoConstraints =  false
         inputVie.clipsToBounds = true
         inputVie.backgroundColor = UIColor.lightGray
         inputVie.layer.cornerRadius = 5
         return inputVie
         }()
     
     let inputViefive: UIView = {
         let inputViefive = UIView()
         inputViefive.translatesAutoresizingMaskIntoConstraints =  false
         inputViefive.clipsToBounds = true
         inputViefive.backgroundColor = UIColor.lightGray
         inputViefive.layer.cornerRadius = 5
         return inputViefive
         }()

     let inputViesix: UIView = {
         let inputViesix = UIView()
         inputViesix.translatesAutoresizingMaskIntoConstraints =  false
         inputViesix.clipsToBounds = true
         inputViesix.backgroundColor = UIColor.lightGray
         inputViesix.layer.cornerRadius = 5
         return inputViesix
         }()
     
     let inputVieseven: UIView = {
         let inputVieseven = UIView()
         inputVieseven.translatesAutoresizingMaskIntoConstraints =  false
         inputVieseven.clipsToBounds = true
         inputVieseven.backgroundColor = UIColor.lightGray
         inputVieseven.layer.cornerRadius = 5
         return inputVieseven
         }()
    
    let tf1: UITextField = {
        let tf1 = UITextField()
        tf1.translatesAutoresizingMaskIntoConstraints = false
        tf1.backgroundColor = .clear
        return tf1
    }()
    
    let tf2: UITextField = {
        let tf2 = UITextField()
        tf2.translatesAutoresizingMaskIntoConstraints = false
        tf2.backgroundColor = .clear
        return tf2
    }()
    
    let tf3: UITextField = {
        let tf3 = UITextField()
        tf3.translatesAutoresizingMaskIntoConstraints = false
        tf3.backgroundColor = .clear
        return tf3
    }()
    
    let tf4: UITextField = {
        let tf4 = UITextField()
        tf4.translatesAutoresizingMaskIntoConstraints = false
        tf4.backgroundColor = .clear
        return tf4
    }()
        
    

}
