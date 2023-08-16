//
//  ImageWithButtons.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 20.07.2023.
//

import SwiftUI

struct ImageWithButtons: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("salad")
                .resizable()
                .padding([.top], 8)
                .padding([.bottom])
                .padding([.leading, .trailing], 56)
                .frame(height: 232, alignment: .center)
                .background(Color(hexString: "#F8F7F5"))
                .cornerRadius(10)
            HStack(spacing: 8) {
                ButtonWithImage(imageSystemName: "heart") {
                    //
                }
                ButtonWithImage(imageSystemName: "xmark") {
                    //
                }
            }
            .padding([.trailing], 8)
        }
    }
}

struct ImageWithButtons_Previews: PreviewProvider {
    static var previews: some View {
        ImageWithButtons()
    }
}
