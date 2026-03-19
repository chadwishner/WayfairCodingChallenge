//
//  ProductsPageModel.swift
//  Wayfair Coding Challenge App
//
//  Created by Chad Wishner on 11/29/23.
//

import Foundation

class ProductsPageModel: ObservableObject {
    @Published var products = [Product]()
    
    init() {
        getProducts(completion: { products in
            DispatchQueue.main.async {
                self.products = products
            }
        })
    }
    
    func getProducts(completion: @escaping ([Product]) -> Void){
        let url = URL(string: "https://api.wayfair.io/interview-sandbox/android/json-to-list/products.v1.json")
        URLSession.shared.dataTask(with: url! as URL) { (data, response, error) in
            
            if error != nil {
                print(error as Any)
                return
            }
            
            do {
                guard let data = data else { return completion([]) }
                let products = try JSONDecoder().decode([Product].self, from: data)
                
                completion(products)
            } catch let jsonError {
                print(jsonError)
            }
            
        }.resume()
    }
}
