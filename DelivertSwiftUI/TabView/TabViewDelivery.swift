//
//  TabView.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 21.07.2023.
//

import SwiftUI

struct TabViewDelivery: View {
    @State private var selectionView = 0
    
    var body: some View {
        TabView(selection: $selectionView) {
            MainView()
                .tabItem {
                    Label("Главная", image: "main")
                }
            Rectangle()
                .tabItem {
                    Label("Поиск", image: "search")
                }
            Basket()
                .tabItem {
                    Label("Корзина", image: "basket")
                }
            Rectangle()
                .tabItem {
                    Label("Аккаунт", image: "profile")
                        .foregroundColor(.red)
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDelivery()
    }
}
