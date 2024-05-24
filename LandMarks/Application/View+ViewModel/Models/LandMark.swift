//
//  LandMark.swift
//  LandMarks
//
//  Created by Ashraful Islam on 5/24/24.
//

import Foundation

struct Landmark: Hashable, Codable, Identifiable {
    var name: String
    var id: Int
    var subtitle: String
    var imageName: String
}
