//
//  MainRouter.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

class MainRouter: MainRouterable {
    private let apiService: ApiServicable

    private let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)

    init() {
        self.apiService = ApiService()
    }

    // View Controllers
    func loadingViewController(startSpinner: Bool) -> LoadingIndicatorViewController {
        let vc = self.mainStoryboard.instantiateViewController(withIdentifier: "LoadingIndicatorViewController") as! LoadingIndicatorViewController
        vc.startSpinning = startSpinner

        return vc
    }

    func resultsViewController(sportResults: SportResultsResponse) -> ResultsViewController {
        let vc = self.mainStoryboard.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        vc.sportResults = sportResults

        return vc
    }

    // View Models
    func mainViewModel() -> MainViewModellable {
        return MainViewModel(apiService: apiService)
    }

}
