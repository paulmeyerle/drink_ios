//
//  SceneCoordinatorType.swift
//  drink
//
//  Created by Paul Meyerle on 11/27/17.
//  Copyright © 2017 Paul Meyerle. All rights reserved.
//

import UIKit

protocol SceneCoordinatorType {
    /// Start the first scene for the application
    func start()

    /// Transition to another scene within the application
    func transition(scene: SceneType, type: SceneTransitionType)

    /// Pop the visible view controller from the stack
    func pop()
}
