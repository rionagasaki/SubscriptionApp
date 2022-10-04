//
//  LoginCardView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/23.
//

import SwiftUI

struct LoginCardView: View {
    @State private var email = ""
    
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            VStack{
                VStack(alignment: .leading, spacing: 16) {
                    HStack{
                        Image(systemName: "key")
                        Text("Sign up").font(Font.largeTitle.bold()).foregroundColor(.white)
                    }
                    Text("Thanks for your installing! Enjoy subscription anyway!").font(.subheadline).foregroundColor(Color.white).opacity(0.6)
                    HStack {
                        Image(systemName: "envelope.open.fill").foregroundColor(Color.white)
                        TextField("Email", text: $email).preferredColorScheme(.dark).foregroundColor(Color.white.opacity(0.9)).textInputAutocapitalization(.none).textContentType(.emailAddress)
                    }.frame(height:52).overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 1)).background(Color.black.opacity(0.1)).cornerRadius(16).blendMode(.overlay)
                    HStack {
                        Image(systemName: "envelope.open.fill").foregroundColor(Color.white).gradientForegroundColor()
                        TextField("Email", text: $email).preferredColorScheme(.dark).foregroundColor(Color.white.opacity(0.9)).textInputAutocapitalization(.none).textContentType(.password)
                    }.frame(height:52).overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 1)).background(Color.black.opacity(0.1)).cornerRadius(16).blendMode(.overlay)
                    Text("Sign In").gradientForegroundColor().font(.footnote)
                    Button {
                        print("Sign In")
                    } label: {
                        GeometryReader { geometry in
                            ZStack{
                                AngularGradient(gradient: Gradient(colors: [.red,.blue]), center: .center, angle: .degrees(0)).blendMode(.overlay).blur(radius: 8).mask(
                                    RoundedRectangle(cornerRadius: 16).frame(height:50).frame(maxWidth:geometry.size.width - 16).blur(radius: 8.0))
                                Text("Sign In").gradientForegroundColor().font(Font.body.bold()).frame(height:45).frame(width:geometry.size.width-20).background(Color.black.opacity(0.8)).cornerRadius(16).overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 1))
                            }
                        }
                    }.frame(height:50)
                    
                }.padding()
            }.background(RoundedRectangle(cornerRadius: 30).stroke(Color.white.opacity(0.2)).background(Color.black.opacity(0.5)).shadow(color: .black, radius: 60, x: 0, y: 30)
            ).cornerRadius(30).padding(.horizontal)
        }
    }
}

struct LoginCardView_Previews: PreviewProvider {
    static var previews: some View {
        LoginCardView()
    }
}

extension View {
    public func gradientForegroundColor() -> some View {
        self.overlay(.linearGradient(Gradient(colors: [.purple, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)).mask(self)
    }
}
