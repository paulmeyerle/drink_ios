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

class TestViewController: UIViewController {
    
    private let viewModel: TestViewModel
    
    private let searchInput = UITextField().then {
        $0.backgroundColor = .purple
    }

    init(viewModel: TestViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
        
        setupBindings()
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = .yellow
        title = "Test View Controller"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupBindings() {
        
    }
    
    private func setupLayout() {
        view.addSubview(searchInput)
        searchInput.snp.makeConstraints { maker in
            maker.top.left.right.equalToSuperview()
                .inset(15)
            maker.height.equalTo(50)
        }
    }

}
