//
//  ContentView.swift
//  PlantShopApp
//
//  Created by Misha Causur on 08.01.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var manager = AppManager()
    var column = GridItem(.adaptive(minimum: 160), spacing: 8)
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [column], spacing: 20) {
                    ForEach(PlantModel.plants) { item in
                        CardView(plant: item)
                            .environmentObject(manager)
                    }
                }
                .padding()
            }
            .navigationTitle("Plants Shop")
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(manager)
                } label: {
                    CartButton(itemsCount: manager.plants.count)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppManager())
    }
}
