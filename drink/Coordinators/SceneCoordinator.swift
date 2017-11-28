//
//  sceneCoordinator.swift
//  mvvm
//
//  Created by Paul Meyerle on 2/9/17.
//  Copyright © 2017 Jetsetter. All rights reserved.
//

import UIKit

struct SceneCoordinator: SceneCoordinatorType {
    let navigationController: UINavigationController
    let networkProvider: NetworkProvider

    init(navigationController: UINavigationController, networkProvider: NetworkProvider) {
        self.navigationController = navigationController
        self.networkProvider = networkProvider
    }

    public func transition(scene: SceneType, type: SceneTransitionType) {
        // first we need to get the view controller
        let viewController = UIViewController.from(scene: scene)

        switch type {
        case .root:
            navigationController.viewControllers = [viewController]
        case .push:
            navigationController.pushViewController(viewController, animated: true)
        case .modal:
            navigationController.present(viewController, animated: true, completion: {
                // completion
            })
        }
    }

    public func pop() {
        guard let visibleViewController = navigationController.visibleViewController else {
            return
        }

        if let presentingViewController = visibleViewController.presentingViewController {
            presentingViewController.dismiss(animated: true, completion: {
                // completion
            })
        } else {
            navigationController.popViewController(animated: true)
        }
    }

    public func start() {
        transition(scene: SceneType.test, type: .root)
        transition(scene: SceneType.test, type: .push)
    }
}
