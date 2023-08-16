//
//  ContentView.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 30.06.2023.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var viewModel: MainViewModel = MainViewModel()
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(viewModel.categories) { category in
                    NavigationLink {
                        Category(viewModel: CategoryViewModel())
                    } label: {
                        let cellViewModel = viewModel.getCellViewModel(for: category.id - 1)
                        MainCell(viewModel: cellViewModel)
                    }
                    .listRowSeparator(.hidden)
                }
            }
            .scrollContentBackground(.hidden)
            .listStyle(.inset)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

