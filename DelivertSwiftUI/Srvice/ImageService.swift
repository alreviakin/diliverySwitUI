//
//  ImageService.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 22.07.2023.
//

import Foundation
import Combine
import SwiftUI

class ImageService {
    static let shared = ImageService()
    
    private init() {}
    
    func fetchImage(from stringURL: String) -> AnyPublisher<Data?, Never >{
        guard let url = URL(string: stringURL) else {
            return Just(nil)
                .eraseToAnyPublisher()
        }
        return URLSession.shared.dataTaskPublisher(for: url).tryMap { (data, response) -> Data? in
            return data
        }
        .catch { error in
            return Just(nil)
        }
        .eraseToAnyPublisher()
    }
}
