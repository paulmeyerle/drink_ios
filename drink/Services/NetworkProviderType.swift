//
//  PMNetworkingType.swift
//  mvvm
//
//  Created by Paul Meyerle on 11/25/17.
//  Copyright © 2017 Jetsetter. All rights reserved.
//

import Foundation
import RxSwift

protocol NetworkProviderType {
    func searchDrinks(query: String) -> Observable<Void>
}
