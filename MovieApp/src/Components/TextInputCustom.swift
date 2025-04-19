//
//  TextInput.swift
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
    private let placeHolder: String
    private let placeHolderColor: Color
    private let textInputColor: Color
    private let modifier: CustomVM?

    init(
        textValue: Binding<String>,
        placeHolder: String = "",
        placeHolderColor: Color = colorThemes.colorSecondary,
        textInputColor: Color = colorThemes.colorSecondary,
        modifier: CustomVM? = nil
    ) {
        self._textValue = textValue
        self.placeHolder = placeHolder
        self.placeHolderColor = placeHolderColor
        self.textInputColor = textInputColor
        self.modifier = modifier
    }

    var body: some View {
        let textField = HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(colorThemes.colorSecondary)
            TextField(
                "",
                text: $textValue,
                prompt: Text(placeHolder)
                    .foregroundColor(placeHolderColor)
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

extension TextInputCustom where CustomVM == EmptyModifier {
    init(
        _ textValue: Binding<String>,
        placeHolder: String = "",
        placeHolderColor: Color = colorThemes.colorSecondary,
        textInputColor: Color = colorThemes.colorSecondary
    ) {
        self._textValue = textValue
        self.placeHolder = placeHolder
        self.placeHolderColor = placeHolderColor
        self.textInputColor = textInputColor
        self.modifier = EmptyModifier()
    }
}
