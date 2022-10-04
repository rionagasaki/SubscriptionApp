//
//  HomeView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/04.
//

import SwiftUI

struct HomeView:View{
    @State private var contentOffSet = CGFloat(0)
    let screenSize = UIScreen.main.bounds.width
    init(){
        UINavigationBar.appearance().barTintColor = UIColor.black
    }
    var body: some View{
        ZStack{
            Color.black
            TrackableScrollView { offset in
                contentOffSet = offset.y
                print(contentOffSet)
            } content: {
                VStack(alignment: .leading){
                    ZStack{
                        Image("home").resizable().offset(y: contentOffSet > 0 ? -contentOffSet-10:-10)
                        Rectangle().frame(width: screenSize, height: 400).foregroundStyle(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
                        VStack{
                            Spacer()
                            Text("横浜家系ラーメン").foregroundColor(.white).bold()
                            Text("横浜にあるとても美味しいラーメン屋さん。是非一度足を運んでみては？").foregroundColor(.gray).frame(width: screenSize-20)
                            Button {
                                print("aaaa")
                            } label: {
                                Text("詳細を見る").foregroundColor(.white)
                            }.frame(width: 110, height: 40).background(Color.gray).cornerRadius(5).padding().cornerRadius(5)
                        }
                    }.frame(height: contentOffSet < 50 && contentOffSet >= 0 ? 400+contentOffSet:400)
                    ZStack{
                        
                        VStack(alignment: .leading){
                            HStack{
                                Text("ジャンル").foregroundColor(.white).bold().font(.system(size: 20)).padding()
                                Spacer()
                                Button {
                                    print("aaa")
                                } label: {
                                    Text("もっと見る").foregroundColor(.orange).padding()
                                }
                            }
                            Janlu().padding(.leading,10)
                            
                            HStack{
                                Text("話題のサブスク").foregroundColor(.white).bold().font(.system(size: 20)).padding()
                                Spacer()
                                Button {
                                    print("aaa")
                                } label: {
                                    Text("もっと見る").foregroundColor(.orange).padding()
                                }
                            }
                            ScrollView(.horizontal) {
                                
                                HStack{
                                    CardView().padding()
                                    CardView().padding()
                                    CardView().padding()
                                    CardView().padding()
                                }
                                
                            }
                            ScrollView(.horizontal) {
                                HStack{
                                    CardView()
                                    CardView()
                                    CardView()
                                    CardView()
                                }
                            }
                        }
                    }
                }
            }
        }.ignoresSafeArea()
    }
}


struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
