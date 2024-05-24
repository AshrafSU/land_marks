//
//  LandMarkListCell.swift
//  LandMarks
//
//  Created by Ashraful Islam on 5/24/24.
//

import SwiftUI

struct LandMarkListCell: View {
    var landmarkIcon: String = "turtlerock"
    var landmarkTitle: String = "Demo Title"
    var landmarkSubTitle: String = "Demo Landmark Subtitle"
    var body: some View {
        HStack(alignment: .center, spacing: 15){
            Image("\(landmarkIcon)")
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 5){
                Text(landmarkTitle)
                    .font(.system(size: 18, weight: .bold))
                    .lineLimit(1)
                Text(landmarkSubTitle)
                    .font(.system(size: 12, weight: .regular))
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }
        .padding(10)
        .frame(height: 78)
        .background(Color.white)
        .cornerRadius(5)
        .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 1)
        
    }
}

struct LandMarkListCell_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkListCell()
    }
}
