//
//  ButtonWithImage.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 20.07.2023.
//

import SwiftUI

struct ButtonWithImage: View {
    let imageSystemName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: imageSystemName)
                .frame(width: 24, height: 24)
                .foregroundColor(.black)
                .padding([.all], 10)
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))

    }
}

struct ButtonWithImage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithImage(imageSystemName: "heart") {
            
        }
    }
}
