//
//  ViewController.swift
//  Discount
//
//  Created by Ahmed MAHOUCHI on 11/16/20.
//

import UIKit
import SideMenuSwift

class ViewController: UIViewController {
    let statusBarBehaviors: [SideMenuController.Preferences.StatusBarBehavior] = [.none, .slide, .fade, .hideOnMenu]
    let menuPosition: [SideMenuController.Preferences.MenuPosition] = [.above, .under, .sideBySide]
    let menuDirections: [SideMenuController.Preferences.MenuDirection] = [.left, .right]
    let menuOrientation: [UIInterfaceOrientationMask] = [.portrait, .allButUpsideDown]
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setNeedsStatusBarAppearanceUpdate()
        // Do any additional setup after loading the view.
    }
    private func configureUI() {
        let preferences = SideMenuController.preferences.basic
        guard let behaviorIndex = statusBarBehaviors.firstIndex(of: preferences.statusBarBehavior) else {
            fatalError("Configuration is messed up")
        }

        guard let menuPositionIndex = menuPosition.firstIndex(of: preferences.position) else {
            fatalError("Configuration is messed up")
        }

        guard let menuDirectionIndex = menuDirections.firstIndex(of: preferences.direction) else {
            fatalError("Configuration is messed up")
        }

        guard let menuOrientationIndex = menuOrientation.firstIndex(of: preferences.supportedOrientations)else {
            fatalError("Configuration is messed up")
        }
        sideMenuController?.revealMenu()
    }


}

