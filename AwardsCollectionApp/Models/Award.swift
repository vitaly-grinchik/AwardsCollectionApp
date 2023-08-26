//
//  Award.swift
//  AwardsCollectionApp
//
//  Created by Виталий Гринчик on 26.08.23.
//

/// МОДЕЛЬ ДЛЯ РАБОТЫ С ЭЛЕМЕНТАМИ ИНТЕРФЕЙСА
import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles().frame(width: 160, height: 160)),
                title: "Gradient Rectangles", awarded: true),
            Award(
                awardView: AnyView(PathView().frame(width: 160, height: 160)),
                title: "Path View", awarded: true),
            Award(
                awardView: AnyView(CurvesView().frame(width: 160, height: 160)),
                title: "Curves View", awarded: false),
            Award(
                awardView: AnyView(CamomileView().frame(width: 160, height: 160)),
                title: "Camomile", awarded: true)
        ]
    }
}
