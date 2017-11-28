//
//  ViewController.swift
//  drink
//
//  Created by Paul Meyerle on 11/27/17.
//  Copyright © 2017 Paul Meyerle. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
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

}
