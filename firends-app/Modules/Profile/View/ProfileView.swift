//
//  ProfileView.swift
//  friends-app
//
//  Created by Edgar Arakelyan on 30.12.22.
//

import SwiftUI

struct ProfileView<M: ProfileViewModeling >: View {
    @ObservedObject var viewModel: M
    
    private let frame: CGFloat = 156.0
    private let radius: CGFloat = 80.0
    private let padding: CGFloat = 30.0
    private let spacing: CGFloat = 24.0
    private let gap: CGFloat = 4.0
    
    var body: some View {
        ZStack {
            Color.Primary.lightGray
            VStack(spacing: spacing) {
                viewModel.image?
                    .resizable()
                    .frame(width: frame, height: frame)
                    .background(Color.white)
                    .cornerRadius(radius)
                VStack(spacing: gap) {
                    Text(viewModel.name)
                        .font(.appContentTitle)
                    Text(viewModel.username)
                        .font(.appContentDescription)
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }
            .padding(.top, padding)
        } .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitleDisplayMode(.inline)
            .accentColor(.Primary.orange)
            .navigationTitle("User Profile")
    } 
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(viewModel: MockProfileViewModel())
    }
}
