//
//  ProductPageTemplateView.swift
//  Wayfair Coding Challenge App
//
//  Created by Chad Wishner on 11/29/23.
//

import SwiftUI

struct ProductsPageTemplateView: View {
    var products: [Product]
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack(spacing: 0) {
                ScrollView {
                    TextFieldView(text: "Products!", font: .largeTitle, color: .blue)
                    
                    LazyVGrid(columns: [GridItem(), GridItem()]) {
                        ForEach(products, id: \.name) { product in
                            ProductView(product: product)
                                .frame(minHeight: 350)
                        }
                    }
                }
            }
        }
    }
}

struct ProductsPageView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsPageTemplateView(
            products: [
                .init(name: "Yellow Chair", tagline: "Great if you like yellow!", rating: 5, date: "1-15-2018"),
                .init(name: "Blue Table", tagline: "Interesting choice for interesting people. This table is just the right color for a modern dining room looking to make a splash with even the most discerning guests!", rating: 4.2, date: "1-14-2018"),
                .init(name: "Pink Lamp", tagline: "Very bold!", rating: 3.49, date: "1-13-2018"),
                .init(name: "Red Stand", tagline: "Stylish and chic.", rating: 2.25, date: "1-12-2018"),
                .init(name: "Wood Desk", tagline: "Timeless and classic.", rating: 1.617, date: "1-11-2018")
            ]
        ).previewDevice(.init(rawValue: "iPhone 11 Pro Max"))
    }
}

