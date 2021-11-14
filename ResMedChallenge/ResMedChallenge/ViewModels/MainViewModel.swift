//
//  MainViewModel.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation

class MainViewModel: BaseViewModel, MainViewModellable {

    var didGetResults       : (() -> Void)?

    var sportResults        : [String: [SportResult]]?

    private let apiService  : ApiServicable

    init(apiService: ApiServicable) {
        self.apiService = apiService
    }

    func getResults() {
        apiService.sportResultsRequest(onSuccess: { [ weak self ] results in
            self?.sportResults = results
            self?.didGetResults?()
        }, onError: { [ weak self ] error in
            self?.errorDidOccur?(error.localizedDescription)
        })
    }
}
