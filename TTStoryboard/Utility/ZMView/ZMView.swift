//
//  ZMView.swift
//  TTStoryboard
//
//  Created by liujianjing on 2017/4/13.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

import UIKit

class ZMView: UIView {
    var contentView: UIView!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initFromXib()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initFromXib()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = self.bounds
    }

    func initFromXib() {
        if contentView == nil {
            let bundle = Bundle(for: type(of: self))
            let nib = UINib(nibName: xibName(), bundle: bundle)
            contentView = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
            contentView.frame = self.bounds
        }
        addSubview(contentView)
    }

    func xibName() -> String {
        var xibName: String = ""
        let className = NSStringFromClass(self.classForCoder)
        let nameArray = className.components(separatedBy: ".")
        xibName = (nameArray.count == 2) ? nameArray[1] : nameArray[0]
        return xibName
    }
}
