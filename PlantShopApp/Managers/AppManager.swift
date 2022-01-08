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
    @Published var paymentSuccess = false
    let paymentHandler = PaymentHandler()
    
    func addPlantToCart(plant: PlantModel) {
        plants.append(plant)
        total += plant.price
    }
    func removePlantFromCart(plant: PlantModel) {
        plants = plants.filter { $0.id != plant.id}
        total -= plant.price
    }
    func pay() {
        paymentHandler.startPayment(products: plants, total: total) { success in
            self.paymentSuccess = success
            self.plants = []
            self.total = 0
        }
    }
}
