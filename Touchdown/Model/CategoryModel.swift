//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Tin Tran on 04/06/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name, image: String
}
