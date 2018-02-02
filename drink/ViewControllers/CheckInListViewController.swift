//
//  CheckInListViewController.swift
//  drink
//
//  Created by Paul Meyerle on 2/2/18.
//  Copyright © 2018 Paul Meyerle. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class CheckInListViewController: UIViewController {

    private let viewModel: CheckInListViewModel

    init(viewModel: CheckInListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)

        setupBindings()
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupBindings() {

    }

    private func setupLayout() {
        view.backgroundColor = .red
    }
}
