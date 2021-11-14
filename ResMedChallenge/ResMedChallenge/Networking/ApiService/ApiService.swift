//
//  ApiService.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation

class ApiService: ApiServicable{

    func sportResultsRequest(onSuccess: (([String: [SportResult]]) -> Void)?, onError: ((NetworkError) -> Void)?) {
        SportResultsRequest.execute(onSuccess: { result in
            onSuccess?(result)
        }, onError: { error in
            onError?(error)
        })
    }
}
