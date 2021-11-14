//
//  NetworkError.swift
//  ResMedChallenge
//
//  Created by pat on 11/11/21.
//

import Foundation

struct NetworkError: Error {
    let statusCode  : Int?
    let title       : String
    let description : String

    init(error: Error) {
        self.statusCode  = nil
        self.title       = .errorAlertTitle
        self.description = error.localizedDescription
    }

    init(statusCode: Int? = nil, title: String, description: String) {
        self.statusCode  = statusCode
        self.title       = title
        self.description = description
    }
}
