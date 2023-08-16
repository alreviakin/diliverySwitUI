//
//  Dish.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 20.07.2023.
//

import SwiftUI

struct Dish: View {
    let text = "Рыба маринованная со специями, лимонным соком, соевым соусом и запечeнная в духовке с лучком, томатами и картошечкой под золотистой майонезно-сырной шубкой"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ImageWithButtons()
                .frame(maxWidth: .infinity)
            Text("Рыба с овощами и рисом")
                .font(.system(size: 16, weight: .medium))
            PriceAndWightText(price: "799 ₽", wight: "560г")
            Text(text)
                .font(.system(size: 14))
                .lineLimit(nil)
                .opacity(0.65)
            Button("Добавить в корзину") {
                
            }
            .padding([.vertical], 14)
            .frame(maxWidth: .infinity)
            .background(Color(hexString: "#3364E0"))
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
    }
}

struct Dish_Previews: PreviewProvider {
    static var previews: some View {
        Dish()
    }
}
