//
//  CategoryService.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 21.07.2023.
//

import Foundation
import Combine

class CategoryService {
    static let shared = CategoryService()
    
    private init() {}
    
    private let baseURL: String = "https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54"
    private var subscriptions = Set<AnyCancellable>()
    
    func fetchCategories() -> Future<[СategoryModel], Error> {
        return Future<[СategoryModel], Error> { [weak self] promise in
            guard let self else { return }
            guard let url = URL(string: baseURL) else {
                return promise(.failure(URLError.unsupportedURL as! Error))
            }
            URLSession.shared.dataTaskPublisher(for: url)
                .tryMap { (data, response) -> Data in
                    guard let httpResponse = response as? HTTPURLResponse, 200...299 ~= httpResponse.statusCode else {
                        return Data()
                    }
                    return data
                }
                .decode(type: CategoryModels.self, decoder: JSONDecoder().self)
                .receive(on: RunLoop.main)
                .sink(receiveCompletion: { completion in
                    if case let .failure(error) = completion {
                        switch error {
                        default:
                            promise(.failure(error))
                        }
                    }
                }) {
                    promise(.success($0.сategories ?? []))
                }
                .store(in: &subscriptions)
            
        }
    }
}

