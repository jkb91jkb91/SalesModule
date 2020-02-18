//
//  Model.swift
//  SalesModule
//
//  Created by XCodeClub on 2020-02-16.
//  Copyright © 2020 XCodeClub. All rights reserved.
//

//MARK:-Modules
import Foundation

//MARK:-struct
struct Model {
    
    var cel1: String!
    var wysokość: String?
    var cel2: String!
    var nazwa: String?
    var rodzaj: String?
    var suma: String?
    var data: String?
    
    let celArray =  ["Zabezpieczenie zdrowia", "Ubezpieczenia auta", "Ubezpieczenie Nieruchomości"]
    let cel2Array = ["budowa/zakup domu/mieszkania", "firma/nowe inwestycje", "leczenie"]
    
    var storedViews = [UIViewSubclass]()
    
    
    
}
