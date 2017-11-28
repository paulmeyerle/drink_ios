//
//  NetworkProviderType.swift
//  drink
//
//  Created by Paul Meyerle on 11/27/17.
//  Copyright © 2017 Paul Meyerle. All rights reserved.
//

import Foundation
import RxSwift

protocol NetworkProviderType {
    func searchDrinks(query: String) -> Observable<Void>
}
