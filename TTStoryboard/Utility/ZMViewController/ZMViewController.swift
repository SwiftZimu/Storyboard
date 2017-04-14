//
//  ZMViewController.swift
//  TTStoryboard
//
//  Created by liujianjing on 2017/4/13.
//  Copyright © 2017年 swiftlang. All rights reserved.
//

import UIKit

class ZMViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    static func getStoryBoardID() -> String {
        return NSStringFromClass(type(of: self) as! AnyClass)
    }

    static func instance(withStoryBoardName name: String) -> ZMViewController {
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: getStoryBoardID()) as! ZMViewController
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
