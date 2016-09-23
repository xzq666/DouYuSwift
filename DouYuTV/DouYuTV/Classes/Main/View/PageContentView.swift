//
//  PageContentView.swift
//  DouYuTV
//
//  Created by 许卓权 on 2016/9/23.
//  Copyright © 2016年 许卓权. All rights reserved.
//

import UIKit

class PageContentView: UIView {
    
    var childVcs : [UIViewController]
    var parentVc : UIViewController

    init(frame: CGRect, childVcs: [UIViewController], parentVc: UIViewController) {
        self.childVcs = childVcs
        self.parentVc = parentVc
        
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
