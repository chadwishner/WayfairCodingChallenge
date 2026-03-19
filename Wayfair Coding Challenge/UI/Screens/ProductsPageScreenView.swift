//
//  ProductsPageScreenView.swift
//  Wayfair Coding Challenge App
//
//  Created by Chad Wishner on 11/29/23.
//

import SwiftUI

struct ProductsPageScreenView: View {
    @ObservedObject var model = ProductsPageModel()
    
    var body: some View {
        ProductsPageTemplateView(products: model.products)
    }
}

