//
//  CartItem.swift
//  PlantShopApp
//
//  Created by Misha Causur on 08.01.2022.
//

import SwiftUI

struct CartItem: View {
    @EnvironmentObject var manager: AppManager
    var plant: PlantModel
    var body: some View {
        HStack(spacing: 16) {
            Image(plant.image)
                .resizable()
                .cornerRadius(20)
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
            VStack(alignment: .leading, spacing: 16) {
                Text(plant.name)
                    .font(.system(size: 18, weight: .bold))
                Text("£\(plant.price).00")
                    .font(.footnote)
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(.secondary)
                .padding(.trailing)
                .onTapGesture {
                    manager.removePlantFromCart(plant: plant)
                }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)

    }
    
}

struct CartItem_Previews: PreviewProvider {
    static var previews: some View {
        CartItem(plant: PlantModel.plants[3])
            .environmentObject(AppManager())
    }
}
