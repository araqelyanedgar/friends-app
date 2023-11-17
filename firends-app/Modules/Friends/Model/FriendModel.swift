//
//  FriendModel.swift
//  firends-app
//
//  Created by Edgar Arakelyan on 29.12.22.
//

import SwiftUI

struct FriendModel: Hashable, Codable {
    let id: Int
    let name: String
    let username: String
    
    private let imageName: String
    var image: Image {
        Image(imageName)
    }
}
