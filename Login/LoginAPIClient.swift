//
//  LoginAPIClient.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/26.
//

import Foundation
import ComposableArchitecture

struct LoginAPIClient {
    var login: (String, String) -> Effect<String, LoginApiError>

    enum LoginApiError: Error, Equatable {
        case badRequest
    }
}

//extension LoginAPIClient {
//    static let live = LoginAPIClient { email, password in
//        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
//        let user = User(email: email, password: password)
//        let url = URL(string: "http://localhost:8080/user")!
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.httpBody = try? JSONEncoder().encode(user)
//        URLSession.shared.dataTaskPublisher(for: request).map { element in
//            let httpResponse = (element.response as? HTTPURLResponse)
//            if httpResponse.statusCode != 200 { throw LoginApiError.badRequest }
//            return element.data
//        }.mapError({ error in
//            LoginAPIClient.LoginApiError
//        }).decode(type: String.self, decoder: decoder).eraseToEffect()
//    }
//}
