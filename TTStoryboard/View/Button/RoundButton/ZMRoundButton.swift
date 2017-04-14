//
//  ZMRoundButton.swift
//  TTStoryboard
//
//  Created by liujianjing on 2017/4/13.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

import UIKit

@IBDesignable
class ZMRoundButton: UIButton {
    fileprivate var normalBgColor: UIColor?
    fileprivate var highlightedBgColor: UIColor?

    var displayText: String?

    override func awakeFromNib() {
        super.awakeFromNib()
        self.clipsToBounds = true
    }

    @IBInspectable var buttonTitle: String? {
        get {
            return displayText
        } set {
            displayText = newValue
            self.setTitle(displayText, for: .normal)
            self.setTitle(displayText, for: .selected)
            self.setTitle(displayText, for: .highlighted)
        }
    }

    @IBInspectable var normalColor: UIColor? {
        get {
            return normalBgColor
        } set {
            normalBgColor = newValue
            self.backgroundColor = normalBgColor
        }
    }

    @IBInspectable var highlightedColor: UIColor? {
        get {
            return highlightedBgColor
        } set {
            highlightedBgColor = newValue
        }
    }

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

    override var isHighlighted: Bool {
        didSet {
            self.backgroundColor = backgroundColor(isSelected: self.isHighlighted)
        }
    }

    override var isSelected: Bool {
        didSet {
            self.backgroundColor = backgroundColor(isSelected: self.isSelected)
        }
    }

    func backgroundColor(isSelected: Bool) -> UIColor? {
        return isSelected ? highlightedBgColor : normalBgColor
    }
    
    func setBorderWidth1Px() {
        self.layer.borderWidth = ZMConstants.ZM_1PX
    }
}
