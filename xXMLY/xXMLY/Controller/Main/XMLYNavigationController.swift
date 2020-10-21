//
//  XMLYNavigationController.swift
//  xXMLY
//
//  Created by 凑巧 on 2020/10/21.
//

import UIKit

class XMLYNavigationController: UINavigationController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBarAppearence()
    }
    
    func setupNavBarAppearence() {
        // 设置导航栏默认的背景颜色
        WRNavigationBar.defaultNavBarBarTintColor = UIColor.init(red: 245 / 255.0, green: 245 / 255.0, blue: 245 / 255.0, alpha: 1)
        
        // 设置导航栏所有按钮的颜色
        WRNavigationBar.defaultNavBarTintColor = XMLYButtonColor
        WRNavigationBar.defaultNavBarTitleColor = UIColor.black
        
        // 统一设置导航栏样式
//        WRNavigationBar.defaultStatusBarStyle = .lightContent
        
        // 如果需要设置导航栏底部分割线隐藏，可以在这里统一设置
        WRNavigationBar.defaultShadowImageHidden = true
    }
}

extension XMLYNavigationController {
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            // push view的时候隐藏状态栏
        }
        
        super.pushViewController(viewController, animated: animated)
    }
}
