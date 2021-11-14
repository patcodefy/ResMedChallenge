//
//  ApiServiceTest.swift
//  ResMedChallengeTests
//
//  Created by pat on 11/13/21.
//

import Foundation
@testable import ResMedChallenge

class ApiServiceTest: ApiServicable {
    var shouldThrowError = false

    func sportResultsRequest(onSuccess: (([String : [SportResult]]) -> Void)?, onError: ((NetworkError) -> Void)?) {
        if shouldThrowError {
            onError?(NetworkError(statusCode: nil, title: "Unit Test Error", description: "Unit Test Error Description"))
            return
        }

        onSuccess?(MockData.response)
    }

}
