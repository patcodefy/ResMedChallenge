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

    func resultsViewController(sportResults: [String: [SportResult]]) -> ResultsViewController {
        let vc = self.mainStoryboard.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        vc.viewModel = resultsViewModel(sportResults: sportResults)

        return vc
    }

    func detailsViewController(result: SportResult) -> DetailsViewController {
        let vc = self.mainStoryboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        vc.result = result

        return vc
    }

    // View Models
    func mainViewModel() -> MainViewModellable {
        return MainViewModel(apiService: apiService)
    }

    private func resultsViewModel(sportResults: [String: [SportResult]]) -> ResultsViewModellable {
        return ResultsViewModel(sportResults: sportResults)
    }

}
