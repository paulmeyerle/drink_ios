//
//  TestViewModel.swift
//  drink
//
//  Created by Paul Meyerle on 1/29/18.
//  Copyright © 2018 Paul Meyerle. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

struct HomeViewModel {
    public let checkInListTitle: Driver<String>
    public let searchTitle: Driver<String>

    public let checkInListViewModel: CheckInListViewModel
    public let searchViewModel: SearchViewModel

    init(networkProvider: NetworkProviderType) {
        checkInListViewModel = CheckInListViewModel(networkProvider: networkProvider)
        searchViewModel = SearchViewModel(networkProvider: networkProvider)

        checkInListTitle = Observable.just("Check Ins")
            .asDriver(onErrorJustReturn: "CheckIns")

        searchTitle = Observable.just("Search")
            .asDriver(onErrorJustReturn: "Search")
    }
}
