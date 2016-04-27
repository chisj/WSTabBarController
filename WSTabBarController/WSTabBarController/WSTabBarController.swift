//
//  WSTabbarViewController.swift
//  aimeilive
//
//  Created by chisj on 16/4/27.
//  Copyright © 2016年 WS. All rights reserved.
//

import UIKit

public class WSTabBarController: UITabBarController {
    public init(publishButtonConfig config:(UIButton ->Void)?, publishButtonClick : (UIButton ->Void)?) {
        super.init(nibName: nil, bundle: nil)
        wsTabbar.publishButtonConfig = config
        wsTabbar.publishButtonClick = publishButtonClick
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let wsTabbar = WSTabBar()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        setValue(wsTabbar, forKey: "tabBar")
    }
    
}
