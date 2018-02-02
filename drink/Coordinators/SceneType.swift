//
//  SceneType.swift
//  drink
//
//  Created by Paul Meyerle on 11/27/17.
//  Copyright © 2017 Paul Meyerle. All rights reserved.
//

import UIKit

enum SceneType {
    case home(viewModel: HomeViewModel)
}

extension SceneType {
    var viewController: UIViewController {
        switch self {
        case .home(let viewModel):
            return HomeViewController(viewModel: viewModel)
        }
    }
}
