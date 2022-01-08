//
//  AppManager.swift
//  PlantShopApp
//
//  Created by Misha Causur on 08.01.2022.
//

import Foundation

class AppManager: ObservableObject {
    @Published private(set) var plants: [PlantModel] = []
    @Published private(set) var total: Int = 0
    
    func addPlantToCart(plant: PlantModel) {
        plants.append(plant)
        total += plant.price
    }
    func removePlantFromCart(plant: PlantModel) {
        plants = plants.filter { $0.id != plant.id}
        total -= plant.price
    }
}
