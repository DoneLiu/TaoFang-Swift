//
//  NavigationViewController.swift
//  Swift-Helloworld
//
//  Created by Done.L on 2017/3/1.
//  Copyright © 2017年 Done.L. All rights reserved.
//

import Foundation
import UIKit

class NavigationViewController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.tintColor = .white
        self.navigationBar.barStyle = .black
        self.navigationBar.barTintColor = UIColor.darkGray
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
