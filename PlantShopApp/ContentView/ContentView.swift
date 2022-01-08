//
//  ContentView.swift
//  PlantShopApp
//
//  Created by Misha Causur on 08.01.2022.
//

import SwiftUI

struct ContentView: View {
    var column = GridItem(.adaptive(minimum: 160), spacing: 8)
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [column], spacing: 20) {
                    ForEach(PlantModel.plants) { item in
                        CardView(plant: item)
                    }
                }
                .padding()
            }
            .navigationTitle("Plants Shop")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
