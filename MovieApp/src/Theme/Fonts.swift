//
//  Fonts.swift
//  TodoApp
//
//  Created by Nguyễn Anh Tuấn on 24/1/25.
//

import Foundation
import SwiftUI



struct Fonts {
    private static let sizeDf : CGFloat = 16
    
    static func nunitoRegular(_ size: CGFloat? = sizeDf) -> Font{
        return Font.custom("Nunito-Regular", size: size ?? sizeDf)
    }

    static func nunitoSemiBold(_ size: CGFloat? = sizeDf) -> Font{
        return Font.custom("Nunito-SemiBold", size: size ?? sizeDf)
    }

    static func nunitoBold(_ size: CGFloat? = sizeDf) -> Font{
        return Font.custom("Nunito-Bold", size: size ?? sizeDf)
    }
}
