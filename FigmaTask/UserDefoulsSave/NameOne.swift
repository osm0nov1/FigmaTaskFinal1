//
//  NameOne.swift
//  FigmaTask
//
//  Created by Rashit Osmonov on 31/3/22.
//

import Foundation

class UserDefaultsService {
    static let shared = UserDefaultsService()
    
    
    var nameOne: String {
        get {
            return UserDefaults.standard.string(forKey: "nameOne_key") ?? ""
         }
            set{
                UserDefaults.standard.set(newValue, forKey: "nameOne_key")
                UserDefaults.standard.synchronize()
            }
    }
    
    var nameTwo: String {
        get {
            return UserDefaults.standard.string(forKey: "nameTwo_key") ?? ""
         }
            set{
                UserDefaults.standard.set(newValue, forKey: "nameTwo_key")
                UserDefaults.standard.synchronize()
            }
    }
    
}


