//
//  ZMCustomView.swift
//  TTStoryboard
//
//  Created by liujianjing on 2017/4/14.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

import UIKit

protocol ZMCustomViewDelegate: NSObjectProtocol {
    func customViewRegisterButtonPressed(_ view: ZMCustomView)
}

@IBDesignable
class ZMCustomView: ZMView {
    weak var delegate: ZMCustomViewDelegate?

    @IBAction func registerButtonPressed(_ sender: ZMRoundButton) {
        NSLog("🍄")
        delegate?.customViewRegisterButtonPressed(self)
    }
}
