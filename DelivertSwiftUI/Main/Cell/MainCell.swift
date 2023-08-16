//
//  MainCell.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 18.07.2023.
//

import SwiftUI

struct MainCell: View {
    @ObservedObject var viewModel: MainCellViewModel
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(data: viewModel.imageData ?? Data())?
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(width: 343)
            Text(viewModel.name)
                .frame(width: 190.0, alignment: .leading)
                .font(.system(size: 20))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
                .padding([.top, .leading], 16)      
        }
        .frame(height: 148)
    }
}

struct MainCell_Previews: PreviewProvider {
    static var previews: some View {
        MainCell(viewModel: MainCellViewModel(category: СategoryModel(id: 0, name: "Name", imageURL: "")))
    }
}
