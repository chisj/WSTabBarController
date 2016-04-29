//
//  WSTabbarViewController.swift
//  aimeilive
//
//  Created by chisj on 16/4/27.
//  Copyright © 2016年 WS. All rights reserved.
//

import UIKit

public class WSTabBarController: UITabBarController {

    public init(publishButtonConfig config:(UIButton ->Void)?, publishButtonClick: (UIButton ->Void)?, publishButtonIndex: Int) {
        super.init(nibName: nil, bundle: nil)
        wsTabbar.set(publishButtonConfig: config, publishButtonClick: publishButtonClick, publishButtonIndex: publishButtonIndex)
    }
    
    public init(publishButtonConfig config:(UIButton ->Void)?, publishButtonClick : (UIButton ->Void)?) {
        super.init(nibName: nil, bundle: nil)
        wsTabbar.set(publishButtonConfig: config, publishButtonClick: publishButtonClick, publishButtonIndex: -1)
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
