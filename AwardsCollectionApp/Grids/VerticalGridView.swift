//
//  VerticalGridView.swift
//  AwardsCollectionApp
//
//  Created by Виталий Гринчик on 26.08.23.
//

import SwiftUI

struct VerticalGridView: View {
    
    private let data = (1...100).map { "Item \($0)" }
    private let columns = [
        GridItem(.fixed(40)),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}
