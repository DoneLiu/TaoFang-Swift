//
//  MainViewController.swift
//  Swift-Helloworld
//
//  Created by Done.L on 2017/2/28.
//  Copyright © 2017年 Done.L. All rights reserved.
//

import UIKit

class MainViewController : UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.white
        
        let btn:UIButton = UIButton.init(type: UIButtonType.system)
        btn.frame = CGRect.init(x: 50, y: 100, width: 220, height: 50)
        btn .setTitle("退出", for: UIControlState.normal)
        btn .addTarget(self, action: #selector(MainViewController.tap(button:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
    }
    
    func tap(button :UIButton) -> Void {
        let alert = UIAlertController.init(title: "提示", message: "退出账号，需要重新输入密码登录！", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "好的", style: .cancel) {(action) in
            //
        })
        alert.addAction(UIAlertAction.init(title: "重新登录", style: .default) {(action) in
            print("重新登录")
        })
        self.present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

