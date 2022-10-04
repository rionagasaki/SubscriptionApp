//
//  Janlu.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/17.
//

import SwiftUI

struct Janlu: View {
    private let names = ["家系ラーメン","二郎","あっさり","味噌ラーメン"]
    var body: some View {
        HStack{
            ForEach(names, id: \.self){ tag in
                Text(tag).padding(.all, 5).font(.system(size: 13)).foregroundColor(.white).background(LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .leading, endPoint: .trailing)).cornerRadius(15)
            }
        }
    }
}

struct Janlu_Previews: PreviewProvider {
    static var previews: some View {
        Janlu()
    }
}
