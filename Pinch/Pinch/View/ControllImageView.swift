//
//  ControllImageView.swift
//  Pinch
//
//  Created by 渡辺涼太 on 2023/01/11.
//

import SwiftUI

struct ControllImageView: View {
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

struct ControllImageView_Previews: PreviewProvider {
    static var previews: some View {
        ControllImageView(icon: "minus.magnifyingglass")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
