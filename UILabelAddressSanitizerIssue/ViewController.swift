//
//  ViewController.swift
//  UILabelAddressSanitizerIssue
//
//  Created by Maxim Nikolaevich on 02/05/2019.
//  Copyright © 2019 Maxim Nikolaevich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let frame = CGRect.zero // CGRect(x: 27, y: 0, width: 168.5, height: 19.5)
        let label = UILabel(frame: frame)
        // changing this line could fix the issue
        label.text = "****8385"
        self.runIssue(for: label)
    }

    func runIssue(for label: UILabel) {
        let text = "\u{2022}\u{2022}\u{2022}\u{2022}1234"
        // let text = "\u{2022}\u{2022}\u{2022}1234" // using one symbol shorter line will fix the issue
        label.text = text
        // this line is never reached if AddressSanitizer is enabled
        print(text)
    }
}

