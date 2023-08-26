//
//  CustomGridView.swift
//  AwardsCollectionApp
//
//  Created by Виталий Гринчик on 26.08.23.
//

import SwiftUI

struct CustomGridView<Content: View, T>: View {
    
    let items: [T]
    let columns: Int
    let content: (T) -> Content
    
    private var rows: Int {
        items.count / columns
    }
    
    var body: some View {
        GeometryReader { geometry in
            let sideSize = geometry.size.width / CGFloat(columns)
            
            
            ScrollView {
                VStack { // Rows
                    ForEach(0...rows, id: \.self) { rowIndex in
                        HStack {
                            ForEach(0..<columns, id: \.self) { columnIndex in
                                if let index = getIndex(row: rowIndex, column: columnIndex) {
                                    content(items[index])
                                        .frame(width: sideSize, height: sideSize)
                                } else {
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
            
        }
    }
    
    private func getIndex(row: Int, column: Int) -> Int? {
        let index = row * columns + column
        return index < items.count ? index : nil
    }
    
}

struct CustomGridView_Previews: PreviewProvider {
    static var previews: some View {
        CustomGridView(
            items: [0, 1, 2, 3, 4, 5, 6],
            columns: 3
        ) {
            // Здесь реализуется один из свободных вариантов представления в интерфейсе. Т.е. при вызове CustomGridView где-то в другой вьюшке в этом замыкании, как и здесь, передаётся любое другое представление
            item in
            Text(item.formatted())
        }
    }
}
