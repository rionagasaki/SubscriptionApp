//
//  CanvasView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/22.
//

import SwiftUI

struct CanvasView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 100, y: 0))
            path.addLine(to: CGPoint(x: 50, y: 50))
            path.addLine(to: CGPoint(x:0, y: 0))
            path.addLine(to: CGPoint(x:0, y: 0))
        }.frame(width: 200, height: 200)
    }
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.52734*height))
        path.addCurve(to: CGPoint(x: 0.70463*width, y: 0.99805*height), control1: CGPoint(x: width, y: 0.77328*height), control2: CGPoint(x: 0.94666*width, y: 0.99805*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.41797*height), control1: CGPoint(x: 0.46261*width, y: 0.99805*height), control2: CGPoint(x: 0.11583*width, y: 0.6543*height))
        path.addCurve(to: CGPoint(x: 0.70463*width, y: 0.00195*height), control1: CGPoint(x: 0, y: 0.17203*height), control2: CGPoint(x: 0.46261*width, y: 0.00195*height))
        path.addCurve(to: CGPoint(x: width, y: 0.52734*height), control1: CGPoint(x: 0.94666*width, y: 0.00195*height), control2: CGPoint(x: 0.93822*width, y: 0.1582*height))
        path.closeSubpath()
        return path
    }
}

struct CanvasView_Previews: PreviewProvider {
    static var previews: some View {
        CanvasView()
    }
}
