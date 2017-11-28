//
//  Networking.swift
//  mvvm
//
//  Created by Paul Meyerle on 11/25/17.
//  Copyright © 2017 Jetsetter. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import Moya
import Moya_ModelMapper

struct NetworkProvider: NetworkProviderType {
    private let drinkService: MoyaProvider<DrinkService>

    init(drinkService: MoyaProvider<DrinkService>) {
        self.drinkService = drinkService
    }

    func searchDrinks(query: String) -> Observable<Void> {
        return Observable.just(Void())
//        return drinkService.rx.request(.searchDrinks(query: query))
//            .retry(3)
//            .map { _ in }
    }
}
