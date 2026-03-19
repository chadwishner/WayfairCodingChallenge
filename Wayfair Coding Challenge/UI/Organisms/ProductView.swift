//
//  ProductView.swift
//  Wayfair Coding Challenge App
//
//  Created by Chad Wishner on 11/29/23.
//

import SwiftUI

struct ProductView: View {
    let product: Product
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ZStack() {
                    Color(red: 32/255, green: 36/255, blue: 38/255)
                    
                    VStack(spacing: 0) {
                        TextFieldView(text: product.name, font: .headline, color: .white)
                        
                        RatingsView(rating: product.rating.roundToNearestHalf())
                        
                        TextFieldView(text: product.date.formatDate(), font: .caption, color: .white)
                    }
                }
                .frame(height: geometry.size.height / 3, alignment: .top)
                
                TextFieldView(text: product.tagline, font: .subheadline, color: .black)
                    .frame(height: geometry.size.height / 2, alignment: .top)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 10)
                
            }
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
            .padding(.all, 10)
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: .init(name: "Yellow Chair", tagline: "Great if you like yellow!", rating: 3.7, date: "1-15-2018"))
    }
}
