//
//  FriendsCell.swift
//  firends-app
//
//  Created by Edgar Arakelyan on 29.12.22.
//

import SwiftUI

struct FriendsCell: View {
    let friendModel: FriendModel
    
    private let frame: CGFloat = 56.0
    private let spacing: CGFloat = 16.0
    private let padding: CGFloat = 12.0
    private let gap: CGFloat = 4.0
    
    var body: some View {
        HStack(spacing: spacing) {
            friendModel.image
                .resizable()
                .frame(width: frame, height: frame)
                .padding(.leading, spacing)
            VStack(alignment: .leading, spacing: gap) {
                Text(friendModel.name)
                    .font(.appContentTitle2)
                    .foregroundColor(.black)
                Text(friendModel.username)
                    .font(.appContentDescription2)
                    .foregroundColor(.gray)
            } .padding(0,spacing,0,padding)
            Spacer()
        } .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(spacing)
            .padding(spacing,0,spacing,0)
    }
}

//struct FriendsCell_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendsCell(friendModel: friends[0])
//    }
//}
