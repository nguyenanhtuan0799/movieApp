//
//  TextInputCustom.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 15/4/25.
//

import Foundation
import SwiftUI

struct DefaultTextInputModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(.all, paddingThemes.padding_m)
            .background(Color.secondary)
            .cornerRadius(radiusThemes.connerRadiusPrimary)
            .padding(
                .horizontal,
                paddingThemes.padding_H_primary
            )
    }
}

struct TextInputCustom<CustomVM>: View where CustomVM: ViewModifier {
    @Binding private var textValue: String
    let placeHolder: String
    let placeHolderColor: Color
    let textInputColor: Color
    let icon: IconView?
    let modifier: CustomVM?

    init(
        textValue: Binding<String>,
        placeHolder: String = "",
        placeHolderColor: Color = colorThemes.colorSecondary,
        textInputColor: Color = colorThemes.colorSecondary,
        icon: IconView? = nil,
        modifier: CustomVM? = nil
    ) {
        self._textValue = textValue
        self.placeHolder = placeHolder
        self.placeHolderColor = placeHolderColor
        self.textInputColor = textInputColor
        self.icon = icon
        self.modifier = modifier

    }

    var body: some View {
        let textField = HStack {
            Group {
                if let icon = icon {
                    icon
                } else {
                    EmptyView()
                }
            }
            TextField(
                "",
                text: $textValue,
                prompt: Text(placeHolder)
                    .foregroundColor(placeHolderColor)
                    .font(Fonts.nunitoRegular(16))
            )
            .foregroundColor(textInputColor)
        }

        Group {
            if let modifier = modifier {
                textField.modifier(modifier)
            } else {
                textField.modifier(DefaultTextInputModifier())
            }
        }

    }
}
