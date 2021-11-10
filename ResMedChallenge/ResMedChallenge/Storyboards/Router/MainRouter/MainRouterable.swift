//
//  MainRouterable.swift
//  ResMedChallenge
//
//  Created by pat on 11/9/21.
//

import UIKit

protocol MainRouterable {

    func loadingViewController(startSpinner: Bool) -> LoadingIndicatorViewController
    func resultsViewController() -> ResultsViewController
}
