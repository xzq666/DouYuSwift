//
//  MainViewController.swift
//  DouYuTV
//
//  Created by 许卓权 on 2016/9/22.
//  Copyright © 2016年 许卓权. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVC(name: "Home")
        addChildVC(name: "Live")
        addChildVC(name: "Follow")
        addChildVC(name: "Profile")
    }
    
    private func addChildVC(name:String) {
        //通过sb获取控制器
        let childVC = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController()!
        //加入子控制器
        addChildViewController(childVC)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
