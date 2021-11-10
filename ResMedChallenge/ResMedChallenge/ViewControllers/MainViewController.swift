//
//  MainViewController.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var getResultsButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        getResultsButton.layer.cornerRadius = getResultsButton.frame.height / 2
    }

    @IBAction func onGetResultsButtonTap(_ sender: UIButton) {
        let loadingVC = Router.instance.mainStoryboard.loadingViewController(startSpinner: true)
        self.present(loadingVC, animated: true)

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [ weak self ] in
            let resultsVC = Router.instance.mainStoryboard.resultsViewController()
            loadingVC.dismiss(animated: true)
            self?.present(resultsVC, animated: true)
        }
    }

}

