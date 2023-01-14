//
//  PageModel.swift
//  Pinch
//
//  Created by 渡辺涼太 on 2023/01/14.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
