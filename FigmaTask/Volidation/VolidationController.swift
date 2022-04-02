//
//  Volidation.swift
//  FigmaTask
//
//  Created by Rashit Osmonov on 31/3/22.
//

import Foundation
class Validation {
    public func validateName(name: String) ->Bool {
        let nameRegex = "^\\w{3,18}$"
        let trimmedString = name.trimmingCharacters(in: .whitespaces)
        let validateName = NSPredicate(format: "SELF MATCHES %@", nameRegex)
        let isValidateName = validateName.evaluate(with: trimmedString)
        return isValidateName
    }
    public func validateLast(lastNAme: String) ->Bool {
        let nameRegex = "^\\w{3,18}$"
        let trimmedString = lastNAme.trimmingCharacters(in: .whitespaces)
        let validate = NSPredicate(format: "SELF MATCHES %@", nameRegex)
        let isValidateLast2 = validate.evaluate(with: trimmedString)
        return isValidateLast2
    }
}
