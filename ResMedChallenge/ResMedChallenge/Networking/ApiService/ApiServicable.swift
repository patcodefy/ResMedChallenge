//
//  ApiServicable.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation

protocol ApiServicable {

    func sportResultsRequest(onSuccess: (([String: [SportResult]]) -> Void)?, onError: ((NetworkError) -> Void)?)
}
