//
//  ViewController2.swift
//  SalesModule
//
//  Created by XCodeClub on 2020-02-16.
//  Copyright © 2020 XCodeClub. All rights reserved.
//

//MARK:-Modules
import UIKit

//MARK:-Class
class ViewController2: UIViewController {
    
    //MARK:-IBOutlets
    @IBOutlet weak var lblCelUbezpieczeniaLbl: UILabel!
    @IBOutlet weak var wysokoscUbezpieczeniaLbl: UILabel!
    @IBOutlet weak var celKredytuLbl: UILabel!
    @IBOutlet weak var wysokoscKredytuLbl: UILabel!
    @IBOutlet weak var rodzajLbl: UILabel!
    @IBOutlet weak var sumaLbl: UILabel!
    @IBOutlet weak var dataLbl: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    
    
    //MARK:-Properties
    var data: Model!
 
    //MARK:-Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillFields()
    }
    
    //MARK:-IBOutlets
    @IBAction func dismissBtn(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    //MARK:-Functions
    func fillFields(){
        lblCelUbezpieczeniaLbl.text = data.cel1
        wysokoscUbezpieczeniaLbl.text = data.wysokość
        celKredytuLbl.text = data.cel2
        wysokoscKredytuLbl.text = data.nazwa
        rodzajLbl.text = data.rodzaj
        sumaLbl.text = data.suma
        dataLbl.text = data.data
    }
    
    func addViews(){
        
        let countViews = data.storedViews.count
        print("ok")
        print(countViews)
        
    }
    
}
