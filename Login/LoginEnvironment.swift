//
//  LoginEnvironment.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/17.
//

import Foundation
import ComposableArchitecture

struct LoginEnvironment{
    var mainQueue: AnySchedulerOf<DispatchQueue>
    var loginFact:(String, String) -> Effect<Void, Error>
}
