//
//  BasketStepper.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 20.07.2023.
//

import SwiftUI

struct BasketStepper: View {
    @Binding var count: Int
    
    var body: some View {
        HStack {            
            Image(systemName: "minus")
                .foregroundColor(.black)
                .frame(width: 24, height: 24)
                .background(Color(hexString: "#EFEEEC")
                    .onTapGesture {
                        if count > 0 {
                            count -= 1
                        }
                    })
            Text("\(count)")
                .foregroundColor(.black)
                .padding([.horizontal], 16)
                .frame(minWidth: 10)
            Image(systemName: "plus")
                .foregroundColor(.black)
                .frame(width: 24, height: 24)
                .onTapGesture {
                    count += 1
                    
                }
        }
        .padding([.vertical], 4)
        .padding([.horizontal], 6)
        .background(Color(hexString: "#EFEEEC"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct BasketStepper_Previews: PreviewProvider {
    static var previews: some View {
        @State var value: Int = 0
        BasketStepper(count: $value)
    }
}
