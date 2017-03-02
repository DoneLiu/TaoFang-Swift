//
//  TabbarViewController.swift
//  Swift-Helloworld
//
//  Created by Done.L on 2017/3/1.
//  Copyright © 2017年 Done.L. All rights reserved.
//

import Foundation
import UIKit

class TabbarViewController : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.tintColor = UIColor.darkGray
        
        self.addChildViewController()
    }
    
    func addChildViewController() -> Void {
        let main = MainViewController.init()
        self.createChildViewController(childViewController: main, title: "首页", image: "home_normal", selectedImage: "home_highlight")
        
        let list = ListViewController.init()
        self.createChildViewController(childViewController: list, title: "列表", image: "fish_normal", selectedImage: "fish_highlight")
        
        let file = FileViewController.init()
        self.createChildViewController(childViewController: file, title: "文件", image: "message_normal", selectedImage: "message_highlight")
        
        let setting = SettingViewContrller.init()
        self.createChildViewController(childViewController: setting, title: "我", image: "account_normal", selectedImage: "account_highlight")
    }
    
    func createChildViewController(childViewController:UIViewController, title:String, image:String, selectedImage:String) -> Void {
        childViewController.title = title;
        childViewController.tabBarItem.image = UIImage.init(named: image)
        childViewController.tabBarItem.selectedImage = UIImage.init(named: selectedImage)
        
        self.addChildViewController(NavigationViewController.init(rootViewController: childViewController))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
