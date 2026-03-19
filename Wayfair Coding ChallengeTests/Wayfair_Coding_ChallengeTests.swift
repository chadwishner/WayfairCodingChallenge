//
//  Wayfair_Coding_ChallengeTests.swift
//  Wayfair Coding ChallengeTests
//
//  Created by Chad Wishner on 11/29/23.
//

import XCTest
@testable import Wayfair_Coding_Challenge

final class Wayfair_Coding_ChallengeTests: XCTestCase {

    func testRoundToNearestHalf() {
        XCTAssertEqual(3.7.roundToNearestHalf(), 3.5, accuracy: 0.001)
        XCTAssertEqual(2.3.roundToNearestHalf(), 2.5, accuracy: 0.001)
        XCTAssertEqual(4.0.roundToNearestHalf(), 4.0, accuracy: 0.001)
        XCTAssertEqual((-1.8).roundToNearestHalf(), -2.0, accuracy: 0.001)
    }
    
    func testFormatDate() {
        XCTAssertEqual("1-15-2022".formatDate(), "Jan 15, 2022")
        XCTAssertEqual("invalid-date-format".formatDate(), "invalid-date-format")
        XCTAssertEqual("20-5-2023".formatDate(), "20-5-2023")
    }
    
    func testGetProducts() {
        let expectation = XCTestExpectation(description: "Fetching products")

        ProductsPageModel().getProducts { products in
            XCTAssertFalse(products.isEmpty, "Products array should not be empty")
            
            for product in products {
                XCTAssertFalse(product.name.isEmpty, "Product name should exist")
                XCTAssertFalse(product.tagline.isEmpty, "Product tagline should exist")
                XCTAssertFalse(product.date.isEmpty, "Product date should exist")
                XCTAssertFalse(product.rating.isNaN, "Product rating should be a number")
            }

            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 5.0)
    }
}
