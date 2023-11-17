//
//  TitleView.swift
//  friends-app
//
//  Created by Edgar Arakelyan on 31.12.22.
//

import SwiftUI

struct TitleView: View {
    let firstLetter: String
    let remainingText: String
    
    init(_ title: String) {
        var text = title
        if !text.isEmpty {
            firstLetter = String(text.removeFirst())
            remainingText = text
        } else {
            firstLetter = ""
            remainingText = ""
        }
    }
    
    var body: some View {
        Text(firstLetter).foregroundColor(.Primary.orange).bold() + Text(remainingText).bold()
    }
}
