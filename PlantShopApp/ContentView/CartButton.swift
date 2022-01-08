//
//  CartButton.swift
//  PlantShopApp
//
//  Created by Misha Causur on 08.01.2022.
//

import SwiftUI

struct CartButton: View {
    var itemsCount: Int = 1
    var body: some View {
        ZStack {
            Image(systemName: "cart")
                .font(.body.bold())
                .padding(.top, 8)
            if itemsCount > 0 {
                Text("\(itemsCount)")
                    .font(.caption.bold())
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(20)
                    .padding(.leading, 12)
                    .padding(.bottom, 10)
            }
           
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton()
    }
}
