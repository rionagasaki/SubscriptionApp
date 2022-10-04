//
//  LoginView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/06.
//

import SwiftUI
import Combine
import ComposableArchitecture


struct LoginView: View {
    private let screenSizen = UIScreen.main.bounds.width
    let store:Store<LoginState, LoginAction>
    var body: some View {
        WithViewStore(self.store){ viewStore in
            
            ZStack{
                Color.black.opacity(0.3).shadow(color: .purple, radius: 50, x: 100, y: 100).shadow(color: .red, radius: 10, x: 0, y: 0)
                VStack{
                    Text("Saku LIFE.").foregroundColor(.white).bold().font(.system(size: 30))
                    Spacer().frame(height:30)
                    TextField("メールアドレス", text: viewStore.binding(get: {
                        $0.emailText
                    }, send: {
                        .enterEmailText($0)
                    })).padding().frame(width: screenSizen-60, height: 50).cornerRadius(16).overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 2)).background(Color.white).padding(.bottom,6)
                    SecureField("パスワード(8文字以上)", text: viewStore.binding(get: {
                        $0.passwordText
                    }, send: {
                        .enterPasswordText($0)
                    })).padding().frame(width: screenSizen-60, height: 50).cornerRadius(16).overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 2)).background(Color.white).padding(.top,15)
                    Button {
                        print("aaa")
                    } label: {
                        Text("パスワードをリセット").underline().bold().foregroundColor(Color.init(uiColor: UIColor(displayP3Red: 40/255, green: 42/255, blue: 51/255, alpha: 1))).font(.system(size: 10))
                    }.padding(.bottom,10).padding(.leading,200)
                    
                    Button {
                        HTTPClient().saveUser(email: viewStore.emailText, password: viewStore.passwordText) { suceess in
                            if suceess {
                                
                            }else{
                                print("bbb")
                            }
                        }
                    } label: {
                        Text("サインイン").bold().foregroundColor(.white)
                    }.frame(width: screenSizen-60, height: 50).background(viewStore.state.loginButtonEnabled ? Color.blue: Color(UIColor.lightGray)).cornerRadius(5).padding(.bottom, 10).disabled(viewStore.state.loginButtonEnabled)
                    HStack{
                        Divider().frame(width:150,height: 1).background(Color.gray)
                        Text("または").foregroundColor(Color.gray)
                        Divider().frame(width:150,height: 1).background(Color.gray)
                    }
                    Button {
                        print("apple")
                    } label: {
                        HStack{
                            Image(systemName: "apple.logo").foregroundColor(Color.white)
                            Text("Appleでサインイン").foregroundColor(Color.white).padding()
                        }
                    }.background(Color.black)
                    Button {
                        print("apple")
                    } label: {
                        HStack{
                            Image(systemName: "apple.logo").foregroundColor(Color.white)
                            Text("Googleでサインイン").foregroundColor(Color.black).padding()
                        }
                    }.background(Color.white)
                    Button {
                        print("apple")
                    } label: {
                        HStack{
                            Image(systemName: "apple.logo").foregroundColor(Color.white)
                            Text("Lineでサインイン").foregroundColor(Color.white).padding()
                        }
                    }.background(Color.green)
                }
            }.ignoresSafeArea()
        }
    }
}

//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//      //  LoginState.initial
//    }
//}
