//
//  Shop.swift
//  Touchdown
//
//  Created by Tin Tran on 05/06/2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
