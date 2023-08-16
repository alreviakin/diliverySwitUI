//
//  MainLeadingBar.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 18.07.2023.
//

import SwiftUI

struct MainLeadingBar: View {
    var body: some View {
        HStack (alignment: .top) {
            Image("location")
            VStack(alignment: .leading) {
                Text("Санкт-Петербург")
                    .font(.system(size: 18, weight: .medium))
                Text("12 Августа, 2023")
                    .font(.system(size: 14, weight: .regular))
            }
        }
    }
}

struct MainLeadingBar_Previews: PreviewProvider {
    static var previews: some View {
        MainLeadingBar()
    }
}
