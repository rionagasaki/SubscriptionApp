//
//  SearchCategoriesView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/21.
//

import SwiftUI

struct SearchCategoriesView: View {
    private let screenWidth = UIScreen.main.bounds.width
    var body: some View {
        ZStack{
            Image("ramen").resizable().frame(width:(screenWidth/2)-35, height: 120).cornerRadius(10)
            Text("飲食店").foregroundColor(Color.white).bold().font(.system(size: 15))
        }
    }
}

struct SearchCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategoriesView()
    }
}
