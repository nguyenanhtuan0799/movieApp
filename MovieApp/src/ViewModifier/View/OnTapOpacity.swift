//
//  OnTapOpacity.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 22/4/25.
//

import Foundation
import SwiftUI

struct OnTapOpacity: ViewModifier {
    let action: () -> Void
    @State private var isPressed: Bool = false

    func body(content: Content) -> some View {
        content.opacity(isPressed ? 0.5 : 1.0)
            .onTapGesture {
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


extension View{
    func onTapOpacity (action: @escaping() -> Void) -> some View{
        self.modifier(OnTapOpacity(action: action))
    }
}
