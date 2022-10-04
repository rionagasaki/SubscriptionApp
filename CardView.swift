//
//  CardView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/17.
//

import SwiftUI

struct CardView: View, Hashable {
    private let tagName = ["映画鑑賞","ラーメンがとてもうまい","価格が安い","とてもはやい"]
    let screenWidth = UIScreen.main.bounds.width
    var body: some View {
        ZStack(alignment: .bottom){
            Color.black
            Image("ramen").resizable().frame(width:screenWidth-60, height: 500).aspectRatio(contentMode: .fill).cornerRadius(16)
            ZStack{
                Color.black.opacity(0.7)
                VStack(alignment: .center){
                    HStack{
                        Button {
                            print("aaaa")
                        } label: {
                            Image(systemName: "arrow.down").foregroundColor(.white)
                        }
                        Text("武蔵家").foregroundColor(.white).bold().font(.system(size: 28)).frame(alignment: .center)
                    }
                    HStack{
                        ForEach(tagName, id: \.self){ tag in
                            Text(tag).padding(.all, 5).font(.system(size: 13)).foregroundColor(.white).background(LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .leading, endPoint: .trailing)).cornerRadius(15)
                        }
                    }
                    HStack{
                        Button {
                            print("aaaa")
                        } label: {
                            HStack{
                                Image(systemName: "heart.fill").foregroundColor(.white)
                                Text("3").foregroundColor(.white)
                            }
                        }.frame(width: 40, height: 30).padding(.leading,10)
                        Button {
                            print("qaaa")
                        } label: {
                            Image(systemName: "square.and.arrow.down").foregroundColor(Color.white)
                        }
                        Spacer()
                    }.frame(width: screenWidth-60, height: 30)
                    
                    HStack{
                        Image(systemName: "person").foregroundColor(.white).frame(width: 30, height: 30).background(Color.gray).cornerRadius(30)
                        Text("りおくん").foregroundColor(.white).bold()
                        Spacer()
                    }.padding(.leading,10)
                }
            }.frame(width: screenWidth-60, height: 250)
        }.frame(width: screenWidth-60, height: 500).cornerRadius(16).overlay(RoundedRectangle(cornerRadius: 16)
            .stroke(Color.white, lineWidth: 3))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
