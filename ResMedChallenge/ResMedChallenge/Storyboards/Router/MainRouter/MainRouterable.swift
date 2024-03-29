//
//  MainRouterable.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

protocol MainRouterable {

    // View Controllers
    func loadingViewController(startSpinner: Bool) -> LoadingIndicatorViewController
    func resultsViewController(sportResults: [String: [SportResult]]) -> ResultsViewController
    func detailsViewController(result: SportResult) -> DetailsViewController

    // View Models
    func mainViewModel() -> MainViewModellable
}
