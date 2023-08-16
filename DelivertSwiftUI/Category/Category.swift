//
//  Categories.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 19.07.2023.
//

import SwiftUI

struct Category: View {
    @State var isEnter: Bool = false
    @ObservedObject var viewModel: CategoryViewModel
    
    var body: some View {
        
        ZStack{
            NavigationStack {
                Categories()
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<4) { section in
                        HStack {
                            ForEach(0..<3) { row in
                                let indexPath = IndexPath(row: row, section: section)
                                let cellViewModel = viewModel.getCellViewModel(for: indexPath)
                                CollectionCell(viewModel: cellViewModel)
                                    .onTapGesture {
                                        isEnter.toggle()
                                    }
                            }
                        }
                    }
                }
                
                .navigationTitle("Пекарни и кондитерские")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image("person")
                            .resizable()
                            .frame(width: 48, height: 48)
                            .clipShape(Circle())
                    }
                }
            }
//            Rectangle()
//                .ignoresSafeArea()
//                .opacity(isEnter ? 0.4 : 0)
//            if isEnter {
//                Dish()
//                    .padding()
//            }
        }
        
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category(viewModel: CategoryViewModel())
    }
}
