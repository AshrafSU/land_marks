//
//  LandMarkDataViewModel.swift
//  LandMarks
//
//  Created by Ashraful Islam on 5/24/24.
//

import Foundation


class LandmarkViewModel: ObservableObject {
    @Published var landmarks: [Landmark] = []
    
    func getJsonData() {
        let decodedLandmarks: [Landmark] = Helper.jsonLoad("landmarkData.json")
        self.landmarks = decodedLandmarks
    }

}

