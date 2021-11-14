//
//  LoadingIndicatorViewController.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

class LoadingIndicatorViewController: UIViewController {

    @IBOutlet var spinner   : UIActivityIndicatorView!

    var startSpinning       : Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        startSpinning ? spinner.startAnimating() : spinner.stopAnimating()
    }
}

