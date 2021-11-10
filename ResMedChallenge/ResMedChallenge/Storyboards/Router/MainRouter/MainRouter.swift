//
//  MainRouter.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

class MainRouter: MainRouterable {

    private let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)

    func loadingViewController(startSpinner: Bool) -> LoadingIndicatorViewController {
        let vc = self.mainStoryboard.instantiateViewController(withIdentifier: "LoadingIndicatorViewController") as! LoadingIndicatorViewController
        vc.startSpinning = startSpinner

        return vc
    }

    func resultsViewController() -> ResultsViewController {
        let vc = self.mainStoryboard.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController

        return vc
    }
}
