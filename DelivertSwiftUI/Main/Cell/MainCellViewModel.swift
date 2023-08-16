//
//  MainCellViewModel.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 22.07.2023.
//

import Foundation
import Combine

class MainCellViewModel: ObservableObject {
    @Published var imageData: Data?
    var name: String
    private var cancellableSet = Set<AnyCancellable>()
    
    init(category: СategoryModel) {
        self.name = category.name
        guard let imageURL = category.imageURL else { return }
        ImageService.shared.fetchImage(from: imageURL)
            .replaceError(with: Data())
            .eraseToAnyPublisher()
            .assign(to: \.imageData, on: self)
            .store(in: &cancellableSet)
    }
}
