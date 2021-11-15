//
//  ApiService.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//
// This is a depedency injection class for all api requests.
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
