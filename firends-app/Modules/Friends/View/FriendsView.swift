//
//  FriendsListView.swift
//  firends-app
//
//  Created by Edgar Arakelyan on 29.12.22.
//

import SwiftUI

struct FriendsView<M: FriendsViewModeling>: View {
    @ObservedObject var viewModel: M
    
    @State var searchText: String = ""
    
    private let spacing: CGFloat = 30.0
    private let padding: CGFloat = 15.0
    private let gap: CGFloat = 7.0
    
    var body: some View {
        NavigationView {
            VStack {
                searchBar
                friendsList
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    TitleView("Friends")
                        .font(.appContentViewTitle)
                }
            }
        } .accentColor(.Primary.orange)
    }
}

extension FriendsView {
    private var searchBar: some View {
        HStack {
            Image("search")
            TextField("Search", text: $searchText)
                .foregroundColor(.gray)
                .accentColor(.gray)
        } .padding(padding,gap,padding,gap)
            .background(Color.Primary.lightGray)
            .cornerRadius(padding)
            .padding(padding,0,padding,0)
    }
    
    private var friendsList: some View {
        ScrollView {
            VStack {
                ForEach(searchResults, id: \.id) { friend in
                    NavigationLink {
                        ProfileView(viewModel: ProfileViewModel(model: friend))
                    } label: {
                        FriendsCell(friendModel: friend)
                    }
                }
            }
            .padding(0,padding,0,spacing)
        } .background(Color.Primary.lightGray)
    }
    
    var searchResults: [FriendModel] {
        searchText.isEmpty ? viewModel.data : viewModel.data.filter { $0.name.lowercased().contains(searchText.lowercased())  || $0.username.lowercased().contains(searchText.lowercased())
        }
    }
}

struct FriendsListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView(viewModel: MockFriendsViewModel())
    }
}
