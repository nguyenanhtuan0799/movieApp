//
//  OnTapOpacity.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 22/4/25.
//

import Foundation
import SwiftUI

struct TapOpacity<Content: View>: View {
    let action: () -> Void
    let content: () -> Content

    @State private var isPressed: Bool = false

    init(
        action: @escaping () -> Void,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.action = action
        self.content = content

    }

    var body: some View {
        content().opacity(isPressed ? 0.5 : 1).onTapGesture {
            withAnimation(.easeInOut(duration: 0.1)) {
                isPressed = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation(.easeInOut(duration: 0.1)) {
                    isPressed = false
                }
                action()
            }
        }
    }

}
