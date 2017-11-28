//
//  UIViewController+SceneType.swift
//  drink
//
//  Created by Paul Meyerle on 11/27/17.
//  Copyright © 2017 Paul Meyerle. All rights reserved.
//

import UIKit

extension UIViewController {
    static func from(scene: SceneType) -> UIViewController {
        switch scene {
        case .test:
            return TestViewController()
        }
    }
}
