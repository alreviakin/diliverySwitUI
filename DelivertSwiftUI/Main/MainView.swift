//
//  ContentView.swift
//  DelivertSwiftUI
//
//  Created by Алексей Ревякин on 30.06.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        locationView
                            .frame(alignment: .leading)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image("person")
                        .resizable()
                        .frame(
                            width: 44,
                            height: 44
                        )
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(22)
                        .clipped()
                        .listRowInsets(EdgeInsets())
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


extension MainView {
    var locationView: some View {
        HStack(alignment: .top) {
            Image("location")
            VStack(alignment: .leading) {
                Text("Санкт-Петербург")
                    .font(
                        .system(
                            size: 18,
                            weight: .medium
                        )
                    )
                    .multilineTextAlignment(.leading)
                Text("12 aug 2023")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(
                        Color(
                            hexString: "#000000")
                    )
                    .opacity(0.5)
            }
        }
    }
}
