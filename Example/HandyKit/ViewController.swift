//
//  ViewController.swift
//  HandyKit
//
//  Created by seonyoung42 on 02/14/2024.
//  Copyright (c) 2024 seonyoung42. All rights reserved.
//

import UIKit
import HandyKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let label = HandyKitLabel(text: "handyKit", textColor: .black, font: .boldSystemFont(ofSize: 20.0))
        label.textAlignment = .center
        self.showToast(label: label,
                       height: 50.0,
                       backgroundColor: .black.withAlphaComponent(0.3),
                       duration: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

