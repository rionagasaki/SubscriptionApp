//
//  LoginState.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/17.
//
import SwiftUI
import ComposableArchitecture

struct LoginState:Equatable{
    var emailText:String
    var passwordText:String
    var isLoginSuccess:Bool
    var loginButtonEnabled:Bool
    
//    static var initial:LoginView {
//        return LoginView(store: Store(initialState: LoginState(emailText: "", passwordText: "", isLoginSuccess: false, loginButtonEnabled: false), reducer: LoginReducer.reducer, environment: LoginEnvironment(mainQueue: .main, loginFact: .live)))
//    }
}


