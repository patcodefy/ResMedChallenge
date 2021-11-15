//
//  MainViewController.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var getResultsButton: UIButton!

    var viewModel = Router.instance.mainStoryboard.mainViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Listen to the view model when it receives api call results
        viewModel.didGetResults = { [ weak self ] in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self?.loadSpinner(false)
                self?.resultsReceived()
            }
        }

        // Listen to the view model when the api call throws an error
        viewModel.errorDidOccur = { [ weak self ] description in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self?.loadSpinner(false)
                self?.simpleAlert(title: .errorAlertTitle, description: description, buttonText: "OK")
            }

        }

    }

    // Handle the loading spinner
    private func loadSpinner(_ startSpinner: Bool) {
        let loadingVC = Router.instance.mainStoryboard.loadingViewController(startSpinner: startSpinner)

        if startSpinner {
            present(loadingVC, animated: true, completion: nil)
        } else {
            dismiss(animated: true, completion: nil)
        }
    }

    // Present the results view controller
    private func resultsReceived() {
        guard let sportResults = viewModel.sportResults else { return }

        let resultsVC = Router.instance.mainStoryboard.resultsViewController(sportResults: sportResults)

        present(resultsVC, animated: true, completion: nil)
    }

    // Make api call when user taps the button
    @IBAction func onGetResultsButtonTap(_ sender: UIButton) {
        viewModel.getResults()
        self.loadSpinner(true)
    }
}

