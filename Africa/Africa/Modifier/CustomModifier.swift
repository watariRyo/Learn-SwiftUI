//
//  CustomModifier.swift
//  Africa
//
//  Created by watariryo on 2023/07/17.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
