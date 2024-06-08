//
//  ContentView.swift
//  LandMarks
//
//  Created by Ashraful Islam on 5/24/24.
//

import SwiftUI

struct LandMarkListView: View {
    @StateObject var viewModel = LandmarkViewModel()
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Text("Land Mark")
                        .font(.title)
                        .bold()
                        .padding(.horizontal)
                    Spacer()
                }
                .padding(.bottom, 5)
                .background(Color.white)
                
                ScrollView(showsIndicators: false){
                    ForEach(0..<viewModel.landmarks.count, id: \.self){ index in
                        let land = viewModel.landmarks[index]
                        LandMarkListCell(landmarkIcon: land.imageName, landmarkTitle: land.name, landmarkSubTitle: land.subtitle)
                            .padding(.horizontal)
                            .padding(.bottom, 2)
                    }
                    .padding(.top, 10)
                }
               
            }
            .background(Color("F8F8F8"))
            .onAppear{
                viewModel.getJsonData()
            }
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
