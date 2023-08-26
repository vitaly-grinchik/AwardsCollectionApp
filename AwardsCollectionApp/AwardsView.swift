//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

//struct AwardsView: View {
//
//    private let awards = Award.getAwards().filter { $0.awarded }
//
//    var body: some View {
//        NavigationStack {
//            CustomGridView(items: awards, columns: 2, content: { award in
//                VStack {
//                    award.awardView
//                    Text(award.title)
//                }
//            })
//            .navigationBarTitle("You gained \(awards.count) awards")
//            .scrollIndicators(.never)
//        }
//    }
//}

struct AwardsView: View {
    
    private let awards = Award.getAwards().filter { $0.awarded }
    private let columns = [GridItem(.adaptive(minimum: 160, maximum: 160))]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(awards, id: \.title) { award in
                        VStack {
                            award.awardView
                            Text(award.title)
                        }
                    }
                }
            }
            .navigationBarTitle("You've got \(awards.count) awards")
            .scrollIndicators(.never)
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
