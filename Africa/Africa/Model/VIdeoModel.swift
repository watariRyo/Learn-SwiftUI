//
//  VIdeoModel.swift
//  Africa
//
//  Created by watariryo on 2023/02/19.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
