//
//  SceneType.swift
//  drink
//
//  Created by Paul Meyerle on 11/27/17.
//  Copyright © 2017 Paul Meyerle. All rights reserved.
//

import UIKit

enum SceneType {
    case test
}

extension SceneType {
    var viewController: UIViewController {
        switch self {
        case .test:
            return TestViewController()
        }
    }
}
