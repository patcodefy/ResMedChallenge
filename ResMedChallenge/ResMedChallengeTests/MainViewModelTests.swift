//
//  MainViewModelTests.swift
//  ResMedChallengeTests
//
//  Created by pat on 11/9/21.
//

import XCTest
@testable import ResMedChallenge

class MainViewModelTests: XCTestCase {

    private var viewModel   : MainViewModellable!
    private let apiService  = ApiServiceTest()
    override func setUp() {
        viewModel = MainViewModel(apiService: apiService)
    }

    override func tearDown() {
        viewModel = nil
    }

    func testGetResults() {

        // Given
        var didRequestSucceed = false

        // When
        viewModel.didGetResults = {
            didRequestSucceed = true
        }
        viewModel.getResults()
        // Then
        XCTAssertTrue(didRequestSucceed)
        XCTAssertEqual(viewModel.sportResults?["f1Results"]?.first?.winner, "Lewis Hamilton")
        XCTAssertEqual(viewModel.sportResults?["nbaResults"]?.first?.winner, "Lakers")
        XCTAssertEqual(viewModel.sportResults?["Tennis"]?.first?.winner, "Rafael Nadal")
    }

    func testGetResultsError() {
        // Given
        var didThrowError = false
        apiService.shouldThrowError = true

        // When
        viewModel.errorDidOccur = { error in
            didThrowError = true
        }
        viewModel.getResults()

        // Then
        XCTAssertTrue(didThrowError)
    }
}

