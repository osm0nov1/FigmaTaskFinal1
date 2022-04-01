//
//  NameTwo.swift
//  FigmaTask
//
//  Created by Rashit Osmonov on 31/3/22.
//

import Foundation
var nameTwo: String {
    get {
        return UserDefaults.standard.string(forKey: "nameTwo_key") ?? ""
     }
        set{
            UserDefaults.standard.set(newValue, forKey: "nameTwo_key")
            UserDefaults.standard.synchronize()
        }
}
