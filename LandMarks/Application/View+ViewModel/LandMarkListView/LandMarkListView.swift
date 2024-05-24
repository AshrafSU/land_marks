//
//  ContentView.swift
//  LandMarks
//
//  Created by Ashraful Islam on 5/24/24.
//

import SwiftUI

struct LandMarkListView: View {
    var landmarks: [Landmark] = load("landmarkData.json")
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Text("Land Mark")
                        .font(.title)
                        .bold()
                        .padding(.horizontal)
                    Spacer()
                }
                .background(Color.white)
                ScrollView(showsIndicators: false){
                    ForEach(0..<landmarks.count, id: \.self){ index in
                        let land = landmarks[index]
                        LandMarkListCell(landmarkIcon: land.imageName, landmarkTitle: land.name, landmarkSubTitle: land.subtitle)
                            .padding(.horizontal)
                    }
                }
               
            }
            .background(Color("F8F8F8"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
                    LandMarkListView()
    }
}
