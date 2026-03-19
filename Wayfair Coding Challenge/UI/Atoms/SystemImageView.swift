//
//  SystemImageView.swift
//  Wayfair Coding Challenge App
//
//  Created by Chad Wishner on 11/29/23.
//

import SwiftUI

struct SystemImageView: View {
    let imageName: String
    let color: Color
    
    var body: some View {
        Image(systemName: imageName)
            .foregroundColor(color)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        SystemImageView(imageName: "star.fill", color: .yellow)
    }
}
