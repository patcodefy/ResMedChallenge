//
//  RequestData.swift
//  ResMedChallenge
//
//  Created by pat on 11/10/21.
//

import Foundation

struct RequestData {
    let baseUrl     : String
    let path        : String
    let method      : HTTPMethod

    init(baseUrl: String = "https://ancient-wood-1161.getsandbox.com", path: String, method: HTTPMethod) {
        self.baseUrl    = baseUrl
        self.path       = path
        self.method     = method
    }
}
