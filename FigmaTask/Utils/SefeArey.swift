//
//  SefeArey.swift
//  FigmaTask
//
//  Created by Rashit Osmonov on 30/3/22.
//

import Foundation
import UIKit
import SnapKit
import CommonCrypto

extension UIView {
    var safeArea: ConstraintBasicAttributesDSL {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.snp
        } else {
            return self.snp
        }
    }
    var safeAreaEdgesInset: UIEdgeInsets {
        if #available(iOS 11.0, *) {
            return self.safeAreaInsets
        } else {
            return UIEdgeInsets()
        }
    }
}
