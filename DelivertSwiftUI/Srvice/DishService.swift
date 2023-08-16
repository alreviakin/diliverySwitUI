//
//  DishService.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 22.07.2023.
//

import Foundation
import Combine

class DishService {
    
    static let shared = DishService()
    private let baseURL = "https://run.mocky.io/v3/aba7ecaa-0a70-453b-b62d-0e326c859b3b"
    private var cancellableSet = Set<AnyCancellable>()
    
    private init() {}
    
    func fetchDishes() -> Future<[DishModel], Error> {
        return Future<[DishModel], Error> { [weak self] promise in
            guard let self else { return }
            guard let url = URL(string: baseURL) else { return }
            URLSession.shared.dataTaskPublisher(for: url)
                .tryMap { (data, response) -> Data in
                    guard let httpResponse = response as? HTTPURLResponse, 200...299 ~= httpResponse.statusCode else {
                        return Data()
                    }
                    return data
                }
                .decode(type: Dishes.self, decoder: JSONDecoder().self)
                .receive(on: RunLoop.main)
                .sink(receiveCompletion: { completion in
                    if case let .failure(error) = completion {
                        switch error {
                        default:
                            promise(.failure(error))
                        }
                    }
                }) { promise(.success($0.dishes ?? []))}
                .store(in: &cancellableSet)
        }
    }
    
}
