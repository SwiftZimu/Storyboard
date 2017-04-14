//
//  ZMExtension.swift
//  TTStoryboard
//
//  Created by liujianjing on 2017/4/14.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

import UIKit
import Foundation

struct ZMConstants {
    static let buttonCornerRadius: CGFloat = 5.0
    static let ZM_1PX = 1.0 / UIScreen.main.scale
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let navigationBarHeight: CGFloat = 64.0
    static let IS_IOS7 = (UIDevice.current.systemVersion as NSString).doubleValue >= 7.0
    static let IS_IOS8 = (UIDevice.current.systemVersion as NSString).doubleValue >= 8.0
    static let IS_IOS9 = (UIDevice.current.systemVersion as NSString).doubleValue >= 9.0
    static let IS_IPAD = (UIDevice.current.userInterfaceIdiom == .pad)
}

extension UIColor {
    convenience init(rgbValue: UInt) {
        self.init(rgbValue: rgbValue, alpha: 1.0)
    }

    convenience init?(rgbString: String) {
        var value64: UInt64 = 0
        Scanner(string: rgbString).scanHexInt64(&value64)
        if let value = UInt(exactly:value64) {
            self.init(rgbValue: UInt(value), alpha: 1.0)
        } else {
            return nil
        }
    }

    convenience init(rgbValue: UInt, alpha: CGFloat) {
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }

    @nonobjc static let UI_orangeColor = UIColor(rgbValue: 0xFF7400)
    @nonobjc static let UI_darkTextColor = UIColor(rgbValue: 0x333333)
    @nonobjc static let UI_normalTextColor = UIColor(rgbValue: 0x666666)
    @nonobjc static let UI_lightTextColor = UIColor(rgbValue: 0x999999)
    @nonobjc static let UI_greyTextColor = UIColor(rgbValue: 0xcccccc)
    @nonobjc static let UI_globalBackgroundColor = UIColor(rgbValue: 0xf3f4f5)
    @nonobjc static let UI_boundryColor = UIColor(rgbValue: 0xe7e7e7)
    @nonobjc static let UI_legacyBoundryColor = UIColor(rgbValue: 0xdcdcdc)
    @nonobjc static let UI_linkTextColor = UIColor(rgbValue: 0x5775a8)
    @nonobjc static let UI_pressBackgroundColor = UIColor(rgbValue: 0xf5f5f5)
    @nonobjc static let UI_tabBarBackgroundColor = UIColor(rgbValue: 0xf6f6f7)
}

extension NSObject {
    func synchronized(_ lock: AnyObject, closure: () -> ()) {
        objc_sync_enter(lock)
        closure()
        objc_sync_exit(lock)
    }
}
