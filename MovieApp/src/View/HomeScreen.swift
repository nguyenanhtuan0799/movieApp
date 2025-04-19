//
//  HomeScreen.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 11/4/25.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
    @State private var textSearch: String = ""

    var body: some View {
        VStack(spacing: 24) {
            renderHeader()
            renderFilterMovie()
        }
        .frame(
            minWidth: 0, maxWidth: .infinity, minHeight: 0,
            maxHeight: .infinity
        )
        .background(colorThemes.colorBgPrimary)

    }
}

extension HomeScreen {
    fileprivate func renderHeader() -> some View {
        VStack(spacing: 24) {
            TextInputCustom<EmptyModifier>(
                textValue: $textSearch,
                placeHolder: "Search Movie",
                icon: IconView(
                    icon: Icon(
                        name: "magnifyingglass",
                        color: colorThemes.colorSecondary))
            )
            AutoSlide(heightView: 180,images: ContanstData.imageMovie)
        }
    }
    fileprivate func renderFilterMovie() -> some View {
        FilterMovie(filters: ContanstData.filterMoiveByModel)
    }
}

#Preview {
    HomeScreen()
}
