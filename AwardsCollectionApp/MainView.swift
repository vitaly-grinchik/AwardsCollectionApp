//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Hide Award" : "Show Award")
                Spacer()
                Image(systemName: "chevron.up.square")
                    .scaleEffect(awardIsShowing ? 2 : 1)
                    .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
            }
            
            Spacer()
                
            if awardIsShowing {
            CamomileView()
                .frame(width: 250, height: 250)
                .transition(.rollInOut)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var rollInOut: AnyTransition {
        let rollIn = AnyTransition.modifier(
            active: RollModifier(degree: 0),
            identity: RollModifier(degree: 90))
            .combined(with: .move(edge: .leading))
        
        let rollOut = AnyTransition.modifier(
            active: RollModifier(degree: 90),
            identity: RollModifier(degree: 0))
            .combined(with: .move(edge: .trailing))
            .combined(with: .opacity)
        
        return .asymmetric(insertion: rollIn, removal: rollOut)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct RollModifier: ViewModifier {
    let degree: Int
    func body(content: Content) -> some View {
        content.rotationEffect(.degrees(Double(degree)))
    }
}
