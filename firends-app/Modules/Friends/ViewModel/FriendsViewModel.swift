//
//  FriendsViewModel.swift
//  friends-app
//
//  Created by Edgar Arakelyan on 30.12.22.
//

import Foundation

final class FriendsViewModel: FriendsViewModeling {
    var data: [FriendModel] = load("FriendsData.json")
    var searchText: String = ""
}

final class MockFriendsViewModel: FriendsViewModeling {
    var data: [FriendModel] = []
    var searchText: String = ""
}
