//
//  NameOne.swift
//  FigmaTask
//
//  Created by Rashit Osmonov on 31/3/22.
//

import Foundation
var nameOne: String {
    get {
        return UserDefaults.standard.string(forKey: "nameOne_key") ?? ""
     }
        set{
            UserDefaults.standard.set(newValue, forKey: "nameOne_key")
            UserDefaults.standard.synchronize()
        }
}


