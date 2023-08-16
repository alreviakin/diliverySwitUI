//
//  Image + Ext.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 01.07.2023.
//

import SwiftUI

extension Image {
    
    init?(data: Data) {
        guard let image = UIImage(data: data) else { return nil }
        self = .init(uiImage: image)
    }
    
}
