//
//  UINavigationController+Extension.swift
//  Discount
//
//  Created by Ahmed MAHOUCHI on 11/16/20.
//

import UIKit

class NavigationController: UINavigationController {

    open override var childForStatusBarHidden: UIViewController? {
        return self.topViewController
    }

    open override var childForStatusBarStyle: UIViewController? {
        return self.topViewController
    }
}
