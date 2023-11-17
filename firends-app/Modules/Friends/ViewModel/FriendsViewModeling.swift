//
//  FriendsViewModeling.swift
//  friends-app
//
//  Created by Edgar Arakelyan on 30.12.22.
//

import Foundation

protocol FriendsViewModeling: ObservableObject {
    var searchText: String { get set }
    var data: [FriendModel] { get set }
}
