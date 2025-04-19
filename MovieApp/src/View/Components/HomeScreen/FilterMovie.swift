//
//  FilterMovie.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 19/4/25.
//

import Foundation
import SwiftUI

struct FilterMovie: View {
    let filters: [FilterModel]

    @State private var currentSelected: FilterModel

    init(filters: [FilterModel]) {
        self.filters = filters
        _currentSelected = State(initialValue: filters.first!)
    }

    var body: some View {
        ScrollView([.horizontal]) {
            HStack(alignment: .center, spacing: 16) {
                ForEach(filters) {
                    f in
                    HStack(spacing: 4) {
                        Group {
                            if currentSelected.id == f.id {
                                Rectangle()
                                    .fill(colorThemes.colorPrimary)
                                    .frame(width: 2, height: 16)
                            } else {
                                Rectangle()
                                    .fill(colorThemes.colorBgPrimary)
                                    .frame(width: 2, height: 16)
                            }
                        }
                        Text(f.title)
                            .foregroundColor(
                                currentSelected.id == f.id
                                    ? colorThemes.colorText
                                    : colorThemes.colorSecondary
                            )
                    }.animation(.easeInOut, value: currentSelected.id)
                        .onTapGesture
                    {
                        currentSelected = f
                    }
                }
            }
        }.padding(
            .horizontal,
            paddingThemes.padding_H_primary
        )
    }
}

#Preview {
    HomeScreen()
}
