//
//  WSTabbar.swift
//  aimeilive
//
//  Created by chisj on 16/4/27.
//  Copyright © 2016年 WS. All rights reserved.
//

import UIKit

class WSTabBarButton: UIButton {}

class WSTabBar: UITabBar {
    private let defaultPublishHeight : CGFloat = 56
    private let btnPublish = WSTabBarButton(type:.Custom)
    
    var publishButtonConfig : (WSTabBarButton ->Void)? {
        didSet {
            setNeedsLayout()
        }
    }
    var publishButtonClick : (UIButton ->Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        btnPublish.backgroundColor = UIColor.clearColor()
        btnPublish.addTarget(self, action: #selector(WSTabBar.publishClick(_:)), forControlEvents: .TouchUpInside)
        addSubview(btnPublish)
        
        return
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func publishClick(sender : WSTabBarButton) {
        if let click = publishButtonClick {
            click(sender)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let originBarNumber = items?.count else { return }
        if originBarNumber == 0 {
            return
        }
        let barWidth = frame.size.width
        let barHeight = frame.size.height
        var publishButtonWidth : CGFloat
        var publishButtonHeight : CGFloat
        if let block = publishButtonConfig {
            block(btnPublish)
            publishButtonWidth = btnPublish.frame.size.width
            publishButtonHeight = btnPublish.frame.size.height
        } else {
            //default config
            publishButtonWidth = barWidth / CGFloat(originBarNumber + 1)
            publishButtonHeight = defaultPublishHeight
            btnPublish.backgroundColor = UIColor.redColor()
            btnPublish.setTitle("+", forState: .Normal)
            btnPublish.setTitle("+", forState: .Normal)
        }
        
        btnPublish.center = CGPointMake(barWidth / 2.0, publishButtonHeight >= barHeight ? barHeight - (publishButtonHeight / 2.0) : barHeight / 2.0)
        let buttonWidth : CGFloat = (barWidth - publishButtonWidth) / CGFloat(originBarNumber)
        let publishIndex = originBarNumber / 2 == 0 ? 1 : originBarNumber / 2
        var index = 0
        subviews.forEach { s in
            if String(s.dynamicType) == "UITabBarButton" {
                s.frame = CGRectMake(index >= publishIndex ? buttonWidth * CGFloat(index) +  publishButtonWidth: buttonWidth * CGFloat(index), s.frame.origin.y, buttonWidth, s.frame.size.height)
                index = index + 1
            }
            if String(s.dynamicType) == "WSTabBarButton" {
                s.frame = CGRectMake(buttonWidth * CGFloat(publishIndex), s.frame.origin.y, publishButtonWidth, publishButtonHeight)
            }
        }
        bringSubviewToFront(btnPublish)
    }
}
