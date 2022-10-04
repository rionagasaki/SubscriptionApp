//
//  LoginAction.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/17.
//

import Foundation

public enum LoginAction{
    case enterEmailText(String)
    case enterPasswordText(String)
    case loginButtonTapped(String, String)
    case loginresponse(Result<Void,Error>)
}
