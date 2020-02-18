//
//  ViewController.swift
//  SalesModule
//
//  Created by XCodeClub on 2020-02-16.
//  Copyright © 2020 XCodeClub. All rights reserved.
//
//MARK:-Modules
import UIKit

//MARK:-Class
class ViewController: UIViewController {
    
    //MARK:-Outlets from UIVIew subclass
    
    //MARK:-Outlets
    @IBOutlet weak var stackConstraint: NSLayoutConstraint!
    @IBOutlet weak var contenHeight: NSLayoutConstraint!
    @IBOutlet weak var popUpShift: NSLayoutConstraint!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var bottomStack: UIStackView!
    @IBOutlet weak var bottomLine: UIStackView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var celUbezpieczeniaBTN: UIButton!
    @IBOutlet weak var celKredytuBTN: UIButton!
    @IBOutlet weak var celUbezpieczeniaLbl: UILabel!
    @IBOutlet weak var celKredytuLbl: UILabel!
    
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf4: UITextField!
    @IBOutlet weak var tf5: UITextField!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    //MARK:-Properties
    var data = Model()
    var height = UIScreen.main.bounds.height
    var ubezpieczenieSelected = false
    var showedPopUp = false
    var frameY = 0
    var viewConstraint = 0
    
    //MARK:-Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
       
        uiCustomization()
        keyboardNotifications()
    }
    
    //MARK:-IBActions
    @IBAction func dalejBtn(_ sender: Any) {
        save()
        performSegue(withIdentifier: "seg", sender: self)
    }
    
    @IBAction func addBtn(_ sender: Any) {
        frameY -= 80
        self.height += 80
        self.stackConstraint.constant += 80
        self.createViews()
        UIView.animate(withDuration: 1, delay: 0, options: .curveEaseInOut, animations: {
            

            self.view.frame = CGRect(x: self.view.frame.origin.x, y: CGFloat(self.frameY), width: UIScreen.main.bounds.width, height: self.height)
            
        }, completion: nil)
        self.viewConstraint += 80
        self.view.layoutIfNeeded()    }
    
    @IBAction func celUbezpieczeniBtn(_ sender: Any) {
        ubezpieczenieSelected = true
        pickerView.reloadAllComponents()
        showPopUp()
    }
    
    @IBAction func celUbezpieczeniaSave(_ sender: Any) {
        hidePopUp()
    }
    
    @IBAction func celKredytuBtn(_ sender: Any) {
        ubezpieczenieSelected = false
        pickerView.reloadAllComponents()
        showPopUp()
    }
    
    func createViews() {
        let subclass = UIViewSubclass()
        data.storedViews.append(subclass)
        print(data.storedViews.count)
        
        let inputViefourth = subclass.inputViefourth
        let inputViefive = subclass.inputViefive
        let inputViesix = subclass.inputViesix
        let inputVieseven = subclass.inputVieseven
        let btn = subclass.btn
        let tf1 = subclass.tf1
        let tf2 = subclass.tf2
        let tf3 = subclass.tf3
        let tf4 = subclass.tf4
        
        view.addSubview(inputViefourth)
        inputViefourth.topAnchor.constraint(equalTo: bottomStack.bottomAnchor, constant: CGFloat(30 + viewConstraint)).isActive = true
        inputViefourth.heightAnchor.constraint(equalToConstant: 50).isActive = true
        inputViefourth.widthAnchor.constraint(equalToConstant: 300).isActive = true
        inputViefourth.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50).isActive = true
        
        view.addSubview(tf1)
        tf1.topAnchor.constraint(equalTo: inputViefourth.topAnchor, constant: 5).isActive = true
        tf1.bottomAnchor.constraint(equalTo: inputViefourth.bottomAnchor, constant: 5).isActive = true
        tf1.leadingAnchor.constraint(equalTo: inputViefourth.leadingAnchor, constant: 5).isActive = true
        tf1.trailingAnchor.constraint(equalTo: inputViefourth.trailingAnchor, constant: 5).isActive = true
        tf1.delegate = self
  
        view.addSubview(inputViefive)
        inputViefive.topAnchor.constraint(equalTo: bottomStack.bottomAnchor, constant: CGFloat(30 + viewConstraint)).isActive = true
        inputViefive.heightAnchor.constraint(equalToConstant: 50).isActive = true
        inputViefive.widthAnchor.constraint(equalToConstant: 150).isActive = true
        inputViefive.leftAnchor.constraint(equalTo: inputViefourth.rightAnchor, constant: 30).isActive = true
        
        view.addSubview(tf2)
        tf2.topAnchor.constraint(equalTo: inputViefive.topAnchor, constant: 5).isActive = true
        tf2.bottomAnchor.constraint(equalTo: inputViefive.bottomAnchor, constant: 5).isActive = true
        tf2.leadingAnchor.constraint(equalTo: inputViefive.leadingAnchor, constant: 5).isActive = true
        tf2.trailingAnchor.constraint(equalTo: inputViefive.trailingAnchor, constant: 5).isActive = true
        tf2.delegate = self
        
        view.addSubview(inputViesix)
        inputViesix.topAnchor.constraint(equalTo: bottomStack.bottomAnchor, constant: CGFloat(30 + viewConstraint)).isActive = true
        inputViesix.heightAnchor.constraint(equalToConstant: 50).isActive = true
        inputViesix.widthAnchor.constraint(equalToConstant: 150).isActive = true
        inputViesix.leftAnchor.constraint(equalTo: inputViefive.rightAnchor, constant: 30).isActive = true
        
        view.addSubview(tf3)
        tf3.topAnchor.constraint(equalTo: inputViesix.topAnchor, constant: 5).isActive = true
        tf3.bottomAnchor.constraint(equalTo: inputViesix.bottomAnchor, constant: 5).isActive = true
        tf3.leadingAnchor.constraint(equalTo: inputViesix.leadingAnchor, constant: 5).isActive = true
        tf3.trailingAnchor.constraint(equalTo: inputViesix.trailingAnchor, constant: 5).isActive = true
        tf3.delegate = self
        
        view.addSubview(inputVieseven)
        inputVieseven.topAnchor.constraint(equalTo: bottomStack.bottomAnchor, constant:  CGFloat(30 + viewConstraint)).isActive = true
        inputVieseven.heightAnchor.constraint(equalToConstant: 50).isActive = true
        inputVieseven.widthAnchor.constraint(equalToConstant: 150).isActive = true
        inputVieseven.leftAnchor.constraint(equalTo: inputViesix.rightAnchor, constant: 30).isActive = true
        
        view.addSubview(tf4)
        tf4.topAnchor.constraint(equalTo: inputVieseven.topAnchor, constant: 5).isActive = true
        tf4.bottomAnchor.constraint(equalTo: inputVieseven.bottomAnchor, constant: 5).isActive = true
        tf4.leadingAnchor.constraint(equalTo: inputVieseven.leadingAnchor, constant: 5).isActive = true
        tf4.trailingAnchor.constraint(equalTo: inputVieseven.trailingAnchor, constant: 5).isActive = true
        tf4.delegate = self
        
        view.addSubview(btn)
        btn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        btn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        btn.leftAnchor.constraint(equalTo: inputVieseven.rightAnchor, constant: 20).isActive = true
        btn.topAnchor.constraint(equalTo: bottomStack.bottomAnchor, constant: CGFloat(30 + viewConstraint) ).isActive  = true
        
        
    }
    
   
}


    
    

