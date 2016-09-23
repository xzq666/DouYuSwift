//
//  HomeViewController.swift
//  DouYuTV
//
//  Created by 许卓权 on 2016/9/22.
//  Copyright © 2016年 许卓权. All rights reserved.
//

import UIKit

private let kTitleViewH: CGFloat = 40

class HomeViewController: UIViewController {
    
    lazy var pageTitleView: PageTitleView =  {
        let titleFrame = CGRect(x: 0, y: kStatusBarH+kNavigationBarH, width: kScreenW, height: kTitleViewH)
        let titles = ["推荐", "游戏", "娱乐", "趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        return titleView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //设置UI界面
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK:- 设置UI界面
extension HomeViewController {
    func setupUI() {
        //不需要调整UIScrollView的内边距
        automaticallyAdjustsScrollViewInsets = false
        //设置导航栏
        setupNavigationBar()
        //添加titleView
        view.addSubview(pageTitleView)
    }
    
    private func setupNavigationBar() {
        //左侧Item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
        //右侧Item
        let size = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [historyItem, searchItem, qrcodeItem]
    }
}
