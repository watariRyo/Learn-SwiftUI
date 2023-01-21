//
//  StartButtonView.swift
//  Fruits
//
//  Created by watariryo on 2023/01/17.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(.white)
    }
}

// MARK: PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
