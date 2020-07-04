//
//  StatusBarController.swift
//  AppKitGlue
//
//  Created by Takahiko Inayama on 2020/07/04.
//  Copyright © 2020 TETRA2000. All rights reserved.
//

import Foundation
import Cocoa

class StatusBarController: NSObject, StatusBarInterface {
    var window: NSWindow?

    func enableStatusBarItem() {
        let statusBar = NSStatusBar.system

        let statusBarItem = statusBar.statusItem(
            withLength: NSStatusItem.squareLength
        )
        statusBarItem.button?.title = "😺"

        let statusBarMenu = NSMenu(title: "Meow!Meow!Meow!")
        statusBarItem.menu = statusBarMenu
    }

    func disableStatusBarItem() {
        // TODO
    }
}
