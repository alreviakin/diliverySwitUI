//
//  MainViewModel.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 01.07.2023.
//

import Foundation

class MainViewModel: ObservableObject {
    @Published var images: [Data] = []
    @Published var names: [String] = []
}
