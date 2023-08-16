//
//  Categories.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 19.07.2023.
//

import SwiftUI

struct Categories: View {
    @State private var selectedButton: Int = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(0..<12) { index in
                    Button("Все меню") {
                        selectedButton = index
                    }
                    .foregroundColor(selectedButton == index ? .white : .black)
                    .padding([.all], 10)
                    .background(selectedButton == index ? Color(hexString: "#3364E0") : Color(hexString: "#F8F7F5"))
                    .cornerRadius(10)
                    .tag(index)
                }
            }
            .padding()
        }
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}
