//
//  CustomTabView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/24.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
        HStack(spacing:0.0){
            ForEach(Tab.allCases, id:\.rawValue) { tab in
                Image(systemName: tab.rawValue).renderingMode(.template)
            }
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
