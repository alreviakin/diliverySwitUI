//
//  CategoryCellViewModel.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 22.07.2023.
//

import Foundation
import Combine

class CategoryCellViewModel: ObservableObject {
    var name: String
    @Published var imageData: Data? 
    private var cancellableSet = Set<AnyCancellable>()
    
    init(dishModel: DishModel) {
        name = dishModel.name
        guard let imageURL = dishModel.imageURL else { return }
        ImageService.shared.fetchImage(from: imageURL)
            .replaceError(with: nil)
            .eraseToAnyPublisher()
            .assign(to: \.imageData, on: self)
            .store(in: &cancellableSet)
    }
    
}
