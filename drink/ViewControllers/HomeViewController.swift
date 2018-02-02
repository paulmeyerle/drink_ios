//
//  ViewController.swift
//  drink
//
//  Created by Paul Meyerle on 11/27/17.
//  Copyright © 2017 Paul Meyerle. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift
import Then
import SnapKit

class HomeViewController: UITabBarController {

    private let disposeBag = DisposeBag()

    private let viewModel: HomeViewModel

    private let checkInListViewController: CheckInListViewController
    private let searchViewController: SearchViewController

    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        checkInListViewController = CheckInListViewController(viewModel: viewModel.checkInListViewModel)
        searchViewController = SearchViewController(viewModel: viewModel.searchViewModel)

        super.init(nibName: nil, bundle: nil)

        setupBindings()
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupBindings() {
        viewModel.checkInListTitle
            .drive(checkInListViewController.rx.title)
            .disposed(by: disposeBag)

        viewModel.searchTitle
            .drive(searchViewController.rx.title)
            .disposed(by: disposeBag)
    }
    
    private func setupLayout() {
        viewControllers = [checkInListViewController, searchViewController]
    }

}
