//
//  ProfileViewModel.swift
//  friends-app
//
//  Created by Edgar Arakelyan on 30.12.22.
//

import SwiftUI

final class ProfileViewModel: ProfileViewModeling {
    var name: String {
        model?.name ?? ""
    }
    
    var username: String {
        model?.username ?? ""
    }
    
    var image: Image? {
        model?.image
    }
    
    let model: FriendModel?
    
    init(model: FriendModel) {
        self.model = model
    }
}

final class MockProfileViewModel: ProfileViewModeling {
    var name: String = ""
    var username: String = ""
    var image: Image? = nil
}
