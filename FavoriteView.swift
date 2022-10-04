//
//  FavoriteView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/21.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                VStack{
                    Image("ramen").resizable().frame(width: 80, height: 80).cornerRadius(20)
                    Text("武蔵家").foregroundColor(Color(uiColor: .lightGray)).font(.system(size: 13))
                }
                VStack{
                    Image("ramen").resizable().frame(width: 80, height: 80).cornerRadius(20)
                    Text("武蔵家").foregroundColor(Color(uiColor: .lightGray)).font(.system(size: 13))
                }
                VStack{
                    Image("ramen").resizable().frame(width: 80, height: 80).cornerRadius(20)
                    Text("武蔵家").foregroundColor(Color(uiColor: .lightGray)).font(.system(size: 13))
                }
                VStack{
                    Image("ramen").resizable().frame(width: 80, height: 80).cornerRadius(20)
                    Text("武蔵家").foregroundColor(Color(uiColor: .lightGray)).font(.system(size: 13))
                }
                VStack{
                    Image("ramen").resizable().frame(width: 80, height: 80).cornerRadius(20)
                    Text("武蔵家").foregroundColor(Color(uiColor: .lightGray)).font(.system(size: 13))
                }
            }
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
