//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Tin Tran on 04/06/2022.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - PREVIEW
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 13 Pro")
            .background(.gray)
    }
}
