//
//  Padding.swift
//  friends-app
//
//  Created by Edgar Arakelyan on 31.12.22.
//

import SwiftUI

struct Padding: ViewModifier {
    
    typealias Edges = (leading: CGFloat?, top: CGFloat?, trailing: CGFloat?, bottom: CGFloat?)
    
    var edges: Edges
    func body(content: Content) -> some View {
        content
            .padding(.leading, edges.leading)
            .padding(.top, edges.top)
            .padding(.trailing, edges.trailing)
            .padding(.bottom, edges.bottom)
    }
}

extension View {
    func padding(_ leading: CGFloat? = nil, _ top: CGFloat? = nil, _ trailing: CGFloat? = nil, _ bottom: CGFloat? = nil) -> some View {
        self.modifier(Padding(edges: Padding.Edges(leading: leading, top: top, trailing: trailing, bottom: bottom)))
    }
}
