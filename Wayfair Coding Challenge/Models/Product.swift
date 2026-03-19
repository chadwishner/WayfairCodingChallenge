//
//  Product.swift
//  Wayfair Coding Challenge App
//
//  Created by Chad Wishner on 11/29/23.
//

import Foundation

struct Product: Decodable {
    let name: String
    let tagline: String
    let rating: Double
    let date: String
}
