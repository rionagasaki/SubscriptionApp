//
//  RootView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/18.
//

import SwiftUI

struct RootView: View {
    @State private var isShowLogin = false
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
       
        ZStack{
            Text("").frame(width: screenWidth, height: screenHeight).background(LinearGradient(gradient: Gradient(colors: [.red, .purple]), startPoint: .bottom, endPoint: .top)).opacity(0.5)
            VStack{
                Text("Substar").foregroundColor(.white).bold().font(.system(size: 60))
                Button {
                    self.isShowLogin = true
                } label: {
                    Text("すでにアカウントをお持ちの方").bold().padding().foregroundColor(Color.white)
                }.frame(width: screenWidth-70, height: 50).background(Color.blue).cornerRadius(20).sheet(isPresented: $isShowLogin) {
                    
                }
                Button {
                    print("aaa")
                } label: {
                    Text("Sign Up").bold().padding().foregroundColor(Color.white)
                }.frame(width: screenWidth-70, height: 50).background(Color.blue).cornerRadius(20)
            }
        }.ignoresSafeArea()
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
