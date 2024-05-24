//
//  LandMarkDataViewModel.swift
//  LandMarks
//
//  Created by Ashraful Islam on 5/24/24.
//

import Foundation


func load<T: Decodable>(_ filename: String) -> T {
    do {
        if let file = Bundle.main.url(forResource: filename, withExtension: nil) {
            let data = try Data(contentsOf: file)
            let decoder = JSONDecoder()
            let decodedData = try decoder.decode(T.self, from: data)
            return decodedData
        } else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
    } catch {
        fatalError("Error decoding \(filename): \(error)")
    }
}
