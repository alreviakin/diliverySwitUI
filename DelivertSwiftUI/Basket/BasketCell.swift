//
//  BasketCell.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 20.07.2023.
//

import SwiftUI

struct BasketCell: View {
    @Binding var value: Int
    
    var body: some View {
        HStack {
            HStack {
                Image("salad")
                    .resizable()
                    .padding([.all], 4)
                    .frame(width: 62, height: 62)
                    .background(Color(hexString: "#F8F7F5"))
                    .cornerRadius(6)
                VStack(alignment: .leading) {
                    Text("Зеленый салат")
                    PriceAndWightText(price: "390 ₽", wight: "420г")
                }
            }
            Spacer()
            BasketStepper(count: $value)
        }
    }
}

struct BasketCell_Previews: PreviewProvider {
    static var previews: some View {
        @State var value: Int = 0
        BasketCell(value: $value)
    }
}
