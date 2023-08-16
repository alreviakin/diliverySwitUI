//
//  DishModel.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 22.07.2023.
//
import Foundation

// MARK: - Dishes
struct Dishes: Codable {
    let dishes: [DishModel]?
}

// MARK: - DishElement
struct DishModel: Codable, Identifiable {
    let id: Int
    let name: String
    let price, weight: Int
    let description: String
    let imageURL: String?
    let tegs: [Teg]?

    enum CodingKeys: String, CodingKey {
        case id, name, price, weight, description
        case imageURL = "image_url"
        case tegs
    }
}

enum Teg: String, Codable {
    case всеМеню = "Все меню"
    case сРисом = "С рисом"
    case сРыбой = "С рыбой"
    case салаты = "Салаты"
}
