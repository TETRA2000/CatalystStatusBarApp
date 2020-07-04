//
//  StatusBarAdapter.swift
//  CatalystStatusBarApp
//
//  Created by Takahiko Inayama on 2020/07/04.
//  Copyright © 2020 TETRA2000. All rights reserved.
//

import Foundation

class StatusBarAdapter {
    static var controller: StatusBarInterface? {
        #if targetEnvironment(macCatalyst)
        guard let url = Bundle.main.builtInPlugInsURL?.appendingPathComponent("AppKitGlue.bundle") else {
            return nil
        }
        guard let bundle = Bundle(path: url.path) else { return nil }
        guard bundle.load() else { return nil }
        guard let cls = bundle.principalClass as? NSObject.Type else { return nil }
        guard let controller = cls.init() as? StatusBarInterface else { return nil }
        return controller
        #else
        return nil
        #endif
    }
}
