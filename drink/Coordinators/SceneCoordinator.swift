//
//  SceneCoordinator.swift
//  drink
//
//  Created by Paul Meyerle on 11/27/17.
//  Copyright © 2017 Paul Meyerle. All rights reserved.
//

import UIKit

struct SceneCoordinator: SceneCoordinatorType {
    let navigationController: UINavigationController
    let networkProvider: NetworkProviderType

    init(navigationController: UINavigationController, networkProvider: NetworkProviderType) {
        self.navigationController = navigationController
        self.networkProvider = networkProvider
    }

    public func transition(scene: SceneType, type: SceneTransitionType) {
        switch type {
        case .root:
            navigationController.viewControllers = [scene.viewController]
        case .push:
            navigationController.pushViewController(scene.viewController, animated: true)
        case .modal:
            navigationController.present(scene.viewController, animated: true, completion: {
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
        let homeViewModel = HomeViewModel(networkProvider: networkProvider)
        transition(scene: SceneType.home(viewModel: homeViewModel), type: .root)
    }
}
