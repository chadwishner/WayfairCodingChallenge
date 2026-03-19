//
//  SystemUIExtensions.swift
//  Wayfair Coding Challenge App
//
//  Created by Chad Wishner on 11/29/23.
//

import Foundation

extension Double {
    public func roundToNearestHalf() -> Double {
        return (self * 2).rounded() / 2
    }
}

extension String {
    public func formatDate() -> String {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "M-d-yyyy"
        
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "MMM d, yyyy"

        guard let date = inputFormatter.date(from: self) else { return self }
        return outputFormatter.string(from: date)
    }
}
