//
//  ProfileViewModeling.swift
//  friends-app
//
//  Created by Edgar Arakelyan on 30.12.22.
//

import Foundation
import SwiftUI

protocol ProfileViewModeling: ObservableObject {
    var name: String { get }
    var username: String { get }
    var image: Image? { get }
}
