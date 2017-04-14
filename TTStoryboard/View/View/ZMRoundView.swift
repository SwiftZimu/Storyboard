//
//  ZMRoundView.swift
//  TTStoryboard
//
//  Created by liujianjing on 2017/4/14.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

import UIKit

@IBDesignable
class ZMRoundView: UIView {
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        } set {
            self.layer.borderColor = newValue?.cgColor
        }
    }

    @IBInspectable var borderWidth: CGFloat {
        get {
            return self.layer.borderWidth
        } set {
            self.layer.borderWidth = newValue
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        } set {
            self.layer.cornerRadius = newValue
        }
    }
}
