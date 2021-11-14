//
//  SportResultsRequest.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation

class SportResultsRequest: RequestEngine {

    typealias ResponseType = [String: [SportResult]]
    typealias CallbackType = [String: [SportResult]]

    static let path = ":443/results"
    static let method = HTTPMethod.post

    static func execute(onSuccess: ((CallbackType) -> Void)? = nil, onError: ((NetworkError) -> Void)? = nil) {
        let request = RequestData(path: path, method: method)

        perform(request: request, onSuccess: { response in
            onSuccess?(response)
        }, onError: { error in
            onError?(error)
        })
    }
}
