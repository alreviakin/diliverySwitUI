//
//  Basket.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 20.07.2023.
//

import SwiftUI

struct Basket: View {
    @State var value1: Int = 0
    @State var value2: Int = 0
    @State var value3: Int = 0
    @State var value4: Int = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(0..<4) { index in
                        switch index {
                        case 0:
                            BasketCell(value: $value1)
                                .listRowSeparator(.hidden)
                        case 1:
                            BasketCell(value: $value2)
                                .listRowSeparator(.hidden)
                        case 2:
                            BasketCell(value: $value3)
                                .listRowSeparator(.hidden)
                        case 3:
                            BasketCell(value: $value4)
                                .listRowSeparator(.hidden)
                        default:
                            Text("1")
                        }
                    }
                }
                .listStyle(.inset)
                .scrollContentBackground(.hidden)
                Spacer()
                Button("Оплатить 2 004 ₽") {
                    
                }
                .padding(.vertical, 15)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color(hexString: "#3364E0"))
                .cornerRadius(10)
                .padding()
                .navigationBarTitleDisplayMode(.inline)
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        MainLeadingBar()
                    }
                    ToolbarItem( placement: .navigationBarTrailing) {
                        Image("person")
                            .resizable()
                            .frame(width: 44, height: 44)
                            .clipShape(Circle())
                    }
                }
                
            }
        }
    }
}

struct Basket_Previews: PreviewProvider {
    static var previews: some View {
        Basket()
    }
}
