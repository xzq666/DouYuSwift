//
//  PageTitleView.swift
//  DouYuTV
//
//  Created by 许卓权 on 2016/9/23.
//  Copyright © 2016年 许卓权. All rights reserved.
//

import UIKit

private let kScrollLineH : CGFloat = 2

class PageTitleView: UIView {
    
    var titles: [String]
    
    lazy var titleLabels : [UILabel] = [UILabel]()
    
    lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        return scrollView
    }()
    
    lazy var scrollLine : UIView = {
        let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()

    //自定义构造函数
    init(frame: CGRect, titles: [String]) {
        self.titles = titles
        
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension PageTitleView {
    
    //设置UI
    func setupUI() {
        //添加UIScrollView
        addSubview(scrollView)
        scrollView.frame = bounds
        
        //添加对应label
        setupTitleLabels()
        
        //设置滚动滑块和底线
        setupBottomMenuAndScrollLine()
    }
    
    private func setupTitleLabels() {
        
        let labelW = frame.width / CGFloat(titles.count)
        let labelH = frame.height - kScrollLineH
        let labelY : CGFloat = 0
        
        for (index, title) in titles.enumerated() {
            let label = UILabel()
            
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
            
            let labelX = labelW * CGFloat(index)
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            
            scrollView.addSubview(label)
            titleLabels.append(label)
        }
        
    }
    
    private func setupBottomMenuAndScrollLine() {
        //添加底线
        let bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.lightGray
        let lineH: CGFloat = 0.5
        bottomLine.frame = CGRect(x: 0, y: frame.height-lineH, width: frame.width, height: lineH)
        addSubview(bottomLine)
        
        //添加scrollLine
        guard let firstLabel = titleLabels.first else {return}
        firstLabel.textColor = UIColor.orange
        scrollLine.frame = CGRect(x: firstLabel.frame.origin.x, y: frame.height-kScrollLineH, width: firstLabel.frame.width, height: kScrollLineH)
        scrollView.addSubview(scrollLine)
    }
    
}
