//
//  InsetGalleryView.swift
//  Africa
//
//  Created by watariryo on 2023/02/12.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) {
                    item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 280)
                        .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        }//: SCROLLVIEW
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
