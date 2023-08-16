//
//  MainModel.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 21.07.2023.
//

import Foundation

struct CategoryModels: Codable {
    let сategories: [СategoryModel]?
}

// MARK: - Сategory
struct СategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let imageURL: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "image_url"
    }
}
