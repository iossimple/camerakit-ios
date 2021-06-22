//
//  UIApplication+InterfaceOrientation.swift
//  CameraKit
//
//  Created by Viet Nguyen Tran on 2021-06-22.
//  Copyright © 2021 Wonderkiln. All rights reserved.
//

import UIKit

extension UIApplication {
    static func interfaceOrientation() -> UIInterfaceOrientation {
        if #available(iOS 13.0, *) ,
           let windowScene = shared.windows.first(where: { $0.isKeyWindow })?.windowScene {
            return windowScene.interfaceOrientation
        } else {
            return shared.statusBarOrientation
        }
    }
}
