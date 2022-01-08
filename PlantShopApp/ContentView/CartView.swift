//
//  CartView.swift
//  PlantShopApp
//
//  Created by Misha Causur on 08.01.2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var manager: AppManager
    var body: some View {
        ScrollView {
            if manager.plants.count > 0 {
                ForEach(manager.plants) { plant in
                    CartItem(plant: plant)
                        .environmentObject(manager)
                }
                PaymentButton(action: manager.pay)
                    .padding()
            } else {
                Text("Your cart is empty")
                    .font(.headline)
                    .padding()
            }
            HStack {
                Text("Total")
                    .font(.headline)
                Spacer()
                Text("£\(manager.total).00")
            }
            .padding()
        }
        .navigationTitle(Text("My Cart"))
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(AppManager())
    }
}
