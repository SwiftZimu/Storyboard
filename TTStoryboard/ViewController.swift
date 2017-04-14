//
//  ViewController.swift
//  TTStoryboard
//
//  Created by liujianjing on 2017/4/13.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: ZMCustomView!

    override func viewDidLoad() {
        super.viewDidLoad()
        customView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func testButtonPressed(_ sender: UIButton) {
        NSLog("🍄")
    }
}

extension ViewController: ZMCustomViewDelegate {
    func customViewRegisterButtonPressed(_ view: ZMCustomView) {
        NSLog("🍎")
    }

}

