//
//  ListViewController.swift
//  Swift-Helloworld
//
//  Created by Done.L on 2017/2/28.
//  Copyright © 2017年 Done.L. All rights reserved.
//

import Foundation
import UIKit

class ListViewController : UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    var tabel = UITableView()
    var baby = ["宝宝0","宝宝1","宝宝2","宝宝3","宝宝4","宝宝5","宝宝6","宝宝7","宝宝8","宝宝9","宝宝10","宝宝11"]
    let indentifier = "indentifier"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        self.tabel = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: 320, height: self.view.bounds.size.height), style: UITableViewStyle.plain)
        self.tabel.delegate = self
        self.tabel.dataSource = self
        self.view.addSubview(self.tabel)

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return baby.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: indentifier)
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: indentifier)
            cell?.textLabel?.text = baby[indexPath.row]
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(baby[indexPath.row])
        tableView .deselectRow(at: indexPath, animated: true)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        self.navigationController?.setNavigationBarHidden(velocity.y > 0 ? true : false, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
