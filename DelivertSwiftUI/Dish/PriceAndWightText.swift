//
//  PriceAndWightText.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 20.07.2023.
//

import SwiftUI

struct PriceAndWightText: View {
    let price: String
    let wight: String
    
    var body: some View {
        HStack(spacing: 0) {
            Text(price)
            Text(" · \(wight)")
                .opacity(0.4)
        }
    }
}

struct PriceAndWightText_Previews: PreviewProvider {
    static var previews: some View {
        PriceAndWightText(price: "799 ₽", wight: "560г")
    }
}
