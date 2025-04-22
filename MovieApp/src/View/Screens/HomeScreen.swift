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
            renderSearch()
            ScrollView([.vertical]) {
                VStack(spacing: 24) {
                    renderAutoSlide()
                    renderFilterMovie()
                    renderTabMovie()
                }
            }
        }
        .frame(
            minWidth: 0, maxWidth: .infinity, minHeight: 0,
            maxHeight: .infinity
        )
        .background(colorThemes.colorBgPrimary)

    }
}

extension HomeScreen {
    fileprivate func renderSearch() -> some View {
        TextInputCustom<EmptyModifier>(
            textValue: $textSearch,
            placeHolder: "Search Movie",
            icon: IconView(
                icon: Icon(
                    name: "magnifyingglass",
                    color: colorThemes.colorSecondary))
        )
    }
    fileprivate func renderAutoSlide() -> some View {
        AutoSlide(heightView: 180, images: ContanstData.imageMovie)
    }
    fileprivate func renderFilterMovie() -> some View {
        FilterMovie(filters: ContanstData.filterMoiveByModel)
    }
    fileprivate func renderTabMovie() -> some View {
        TabMovie(
            typeTab: .watch,
            title: "Continue Watch",
            movies: ContanstData.movies
        )
    }
}

#Preview {
    EntryPointApp()
}
