//
//  firends_appApp.swift
//  firends-app
//
//  Created by Edgar Arakelyan on 29.12.22.
//

import SwiftUI

@main
struct friends_appApp: App {
    var body: some Scene {
        WindowGroup {
            FriendsView(viewModel: FriendsViewModel())
        }
    }
}
