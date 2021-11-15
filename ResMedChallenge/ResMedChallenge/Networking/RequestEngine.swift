//
//  RequestEngine.swift
//  ResMedChallenge
//
//  Created by pat on 11/10/21.
//

// This protocol handles everything related to the network requests.
import UIKit

protocol RequestEngine {

    associatedtype ResponseType: Codable
    associatedtype CallbackType: Codable

    static var path     : String        { get }
    static var method   : HTTPMethod    { get }
}

extension RequestEngine {
    static func perform (
        request: RequestData,
        onSuccess: @escaping (ResponseType) -> Void,
        onError: @escaping (NetworkError) -> Void
    ) {
        if let urlRequest = configureRequest(request) {

            DispatchQueue.main.async {
                URLSession.shared.dataTask(with: urlRequest) { data, _, error in
                    if let error = error {
                        onError(NetworkError(error: error))
                        return
                    }

                    guard let data_ = data else {
                        onError(NetworkError(title: .errorAlertTitle, description: .unexpectedError))
                        return
                    }

                    do {
                        let jsonDecoder = JSONDecoder()
                        let result = try jsonDecoder.decode(ResponseType.self, from: data_)
                        DispatchQueue.main.async {
                            onSuccess(result)
                        }
                    } catch {
                        onError(NetworkError(title: .errorAlertTitle, description: "There was an issue loading this data"))
                    }

                }.resume()
            }
        } else {
            onError(NetworkError(title: .errorAlertTitle, description: .invalidUrl))
        }
    }

    private static func configureRequest(_ request: RequestData) -> URLRequest? {
        guard let url = URL(string: request.baseUrl + request.path) else { return nil}

        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = request.method.rawValue

        return urlRequest
    }
}
