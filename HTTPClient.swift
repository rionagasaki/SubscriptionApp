//
//  HTTPClient.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/18.
//

import Foundation

struct HTTPClient {
    func saveUser(email:String, password:String, completion: @escaping (Bool) ->Void){
        let user = User(email: email, password: password)
        let url = URL(string: "http://localhost:8080/user")
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(user)
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let _ = data, error == nil else {
                completion(false)
                return
            }
            completion(true)
        }.resume()
    }
}

