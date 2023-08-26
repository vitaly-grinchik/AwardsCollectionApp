//
//  HorizontalGridView.swift
//  AwardsCollectionApp
//
//  Created by Виталий Гринчик on 26.08.23.
//

import SwiftUI

struct HorizontalGridView: View {
    private let data = (1...10)
    
    private let rows = [
        GridItem()
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Image(systemName: item.formatted() + ".circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView()
    }
}
