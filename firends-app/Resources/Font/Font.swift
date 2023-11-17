//
//  Font.swift
//  friends-app
//
//  Created by Edgar Arakelyan on 31.12.22.
//

import SwiftUI

enum FontType: String {
    case roboto
    
    var name: String {
        self.rawValue.capitalized
    }
}

enum FontWeight: String {
    
    case light
    case medium
    case bold
    
    var name: String {
        "-" + self.rawValue.capitalized
    }
}

extension Font {
    
    static private func font(type: FontType, weight: FontWeight, style: UIFont.TextStyle) -> Font {
        .custom(type.name + weight.name, size: UIFont.preferredFont(forTextStyle: style).pointSize)
    }
    
    static private func font(type: FontType, weight: FontWeight, size: CGFloat) -> Font {
        .custom(type.name + weight.name, size: size)
    }
}


extension Font {

    static let appContentViewTitle = font(type: .roboto, weight: .bold, size: 34)
    static let appContentTitle = font(type: .roboto, weight: .bold, size: 22)
    static let appContentTitle2 = font(type: .roboto, weight: .bold, size: 20)
    static let appContentDescription = font(type: .roboto, weight: .light, size: 15)
    static let appContentDescription2 = font(type: .roboto, weight: .light, size: 12)
}
