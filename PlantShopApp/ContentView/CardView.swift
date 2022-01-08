//
//  CardView.swift
//  PlantShopApp
//
//  Created by Misha Causur on 08.01.2022.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var manager: AppManager
    var plant: PlantModel
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(plant.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 164)
                    .cornerRadius(20)
                VStack(alignment: .leading) {
                    Text(plant.name)
                        .font(.system(size: 14, weight: .bold))
                    Text("£\(plant.price).00")
                        .font(.caption)
                }
                .frame(maxWidth: 164, alignment: .leading)
                .padding(6)
                .background(.ultraThinMaterial).cornerRadius(12)
            }
            .frame(width: 164)
            .shadow(radius: 6)
            Button {
                manager.addPlantToCart(plant: plant)
            } label: {
                Image(systemName: "plus")
                    .frame(width: 8, height: 8)
                    .padding(10)
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                    .padding(6)
                  
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(plant: PlantModel.plants[0])
            .environmentObject(AppManager())
    }
}
