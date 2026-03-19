//
//  TextFieldView.swift
//  Wayfair Coding Challenge App
//
//  Created by Chad Wishner on 11/29/23.
//

import SwiftUI

struct TextFieldView: View {
    let text: String
    let font: Font
    let color: Color
    
    var body: some View {
        Text(text)
            .font(font)
            .foregroundColor(color)
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: "hello world", font: .body, color: .black)
    }
}

