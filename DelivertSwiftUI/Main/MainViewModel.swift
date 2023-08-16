//
//  MainViewModel.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 21.07.2023.
//

import Foundation
import Combine

class MainViewModel: ObservableObject {
    @Published var categories: [СategoryModel] = []
    private var cancellableSet: Set<AnyCancellable> = []
    
    init() {
        CategoryService.shared.fetchCategories()
            .replaceError(with: [])
            .eraseToAnyPublisher()
            .assign(to: \.categories, on: self)
            .store(in: &cancellableSet)
        
    }
    
    deinit {
        for cancell in cancellableSet {
            cancell.cancel()
        }
    }
    
    func getCellViewModel(for index: Int) -> MainCellViewModel {
        return MainCellViewModel(category: categories[index])
    }
}
