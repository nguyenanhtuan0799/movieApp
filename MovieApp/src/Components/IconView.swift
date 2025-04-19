//
//  IconView.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 15/4/25.
//

import Foundation
import SwiftUI

struct Icon {
    var name: String
    var color: Color
}

struct IconView: View {
    var icon: Icon

    var body: some View {
        Image(systemName: icon.name)
            .foregroundStyle(icon.color)
    }
}
