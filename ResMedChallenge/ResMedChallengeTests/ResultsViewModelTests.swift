//
//  ResultsViewModelTests.swift
//  ResMedChallengeTests
//
//  Created by pat on 11/13/21.
//

import XCTest
@testable import ResMedChallenge

class ResultsViewModelTests: XCTestCase {

    private var viewModel   : ResultsViewModellable!

    override func setUp() {
        viewModel = ResultsViewModel(sportResults: MockData.response)
    }

    override func tearDown() {
        viewModel = nil
    }

    func testLoadingData() {
        // Given
        var didLoadData = false
        let outputSentences = [
            "Roland Garros: Rafael Nadal wins against Schwartzman in 3",
            "Lewis Hamilton wins Silverstone Grand Prix by 5.856",
            "Roland Garros: Novak Djokovic wins against Stefanos Tsitsipas in 3",
            "Lebron James leads Lakers to game 6 in the NBA playoffs"
        ]
        // When
        viewModel.didGetRecentRecords = {
            didLoadData = true
        }
        viewModel.loadData()

        // Then
        XCTAssertTrue(didLoadData)
        XCTAssertFalse(viewModel.outputSentences.isEmpty)
        for (index, sentence) in outputSentences.enumerated() {
            XCTAssertEqual(viewModel.outputSentences[index].first, sentence)
        }
    }

}
