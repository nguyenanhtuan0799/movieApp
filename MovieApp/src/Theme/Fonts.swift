//
//  Fonts.swift
//  TodoApp
//
//  Created by Nguyễn Anh Tuấn on 24/1/25.
//

import SwiftUI

struct Fonts {
    static func sourGummyRegular(size:CGFloat) -> Font{
        return Font.custom("SourGummy-Black_Regular", size: size)
    }

    static func sourGummySemiBold(size:CGFloat) -> Font{
        return Font.custom("SourGummy-Black_SemiBold", size: size)
    }

    static func sourGummyBold(size:CGFloat) -> Font{
        return Font.custom("SourGummy-Black_Bold", size: size)
    }
}
