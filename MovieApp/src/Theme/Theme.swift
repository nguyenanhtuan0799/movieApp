//
//  Theme.swift
//  TodoApp
//
//  Created by Nguyễn Anh Tuấn on 26/1/25.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct radiusThemes {
    static let connerRadiusPrimary = CGFloat(8)
    static let connerRadiusFull = CGFloat(99)
    static let connerRadiusInput = CGFloat(12)
}

struct paddingThemes{
    static let padding_s = CGFloat(4)
    static let padding_m = CGFloat(8)
    static let padding_l = CGFloat(16)
    static let padding_H_primary = CGFloat(24)
}

struct colorThemes{
    static let colorSecondary = Color.init(hex:"#a3a3a3")
    static let colorText = Color.white
    static let colorBgPrimary = Color.init(hex:"#0a0a0a")
    static let colorPrimary =  Color.init(hex:"#d12f26")
    static let colorBgGray =  Color.init(hex:"#1a191c")
}
