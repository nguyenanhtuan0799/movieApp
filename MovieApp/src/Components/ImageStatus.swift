//
//  ImageStatus.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 22/4/25.
//

import Foundation
import SwiftUI

struct ImageStatusLoading : View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.2)
            ProgressView()  // Loader
        }
    }
}

struct ImageStatusFail: View{
    var body: some View {
        ZStack {
            Color.gray.opacity(0.2)
            Image(systemName: "photo")  // Icon fallback
                .foregroundColor(.white)
        }
    }
}
