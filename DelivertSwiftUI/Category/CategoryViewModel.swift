//
//  CategoryViewModel.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 22.07.2023.
//

import Foundation
import Combine

class CategoryViewModel: ObservableObject {
    
    @Published var dishes: [DishModel] = []
    private var cancellableSet = Set<AnyCancellable>()
    
    init() {
        DishService.shared.fetchDishes()
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .assign(to: \.dishes, on: self)
            .store(in: &cancellableSet)
    }
    
    func getCellViewModel(for indexPath: IndexPath) -> CategoryCellViewModel {
        let index = indexPath.row + indexPath.section * 3
        return CategoryCellViewModel(dishModel: dishes[index])
    }
}
