//
//  SceneTransitionType.swift
//  drink
//
//  Created by Paul Meyerle on 11/27/17.
//  Copyright © 2017 Paul Meyerle. All rights reserved.
//

import Foundation

enum SceneTransitionType {
    /// override the application root view controller
    case root
    
    /// present a modal view controller from the currently visible controller
    case modal
    
    // push the view controller onto the navigation stack
    case push
}
