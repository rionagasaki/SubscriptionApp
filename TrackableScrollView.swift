//
//  TrackableScrollView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/23.
//

import SwiftUI

struct TrackableScrollView<Content:View>:View{
    let axes:Axis.Set
    let offSetChanged:(CGPoint) -> Void
    let content:Content
    init(axes:Axis.Set = .vertical, offSetChanged: @escaping (CGPoint)-> Void = { _ in }, @ViewBuilder content:()->Content){
        self.axes = axes
        self.offSetChanged = offSetChanged
        self.content = content()
    }
    var body: some View {
        SwiftUI.ScrollView(axes){
            GeometryReader { geometry in
                Color.clear.preference(key: ScrollOffSetPrefrenceKey.self, value: geometry.frame(in: .named("scrollView")).origin)
            }.frame(width: 0, height: 0)
            content
        }.coordinateSpace(name: "scrollView").onPreferenceChange(ScrollOffSetPrefrenceKey.self, perform: offSetChanged)
    }
}

private struct ScrollOffSetPrefrenceKey: PreferenceKey {
    static var defaultValue:CGPoint = .zero
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {}
}


