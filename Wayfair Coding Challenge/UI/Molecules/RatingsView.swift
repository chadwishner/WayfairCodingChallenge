//
//  RatingsView.swift
//  Wayfair Coding Challenge App
//
//  Created by Chad Wishner on 11/29/23.
//

import SwiftUI

struct RatingsView: View {
    let rating: Double
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<Int(floor(rating))) { _ in
                SystemImageView(imageName: "star.fill", color: .yellow)
            }
            
            if rating.truncatingRemainder(dividingBy: 1.0) > 0 {
                SystemImageView(imageName: "star.lefthalf.fill", color: .yellow)
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(rating: 3.5)
    }
}
