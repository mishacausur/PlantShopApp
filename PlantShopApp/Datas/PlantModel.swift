//
//  PlantModel.swift
//  PlantShopApp
//
//  Created by Misha Causur on 08.01.2022.
//

import Foundation
import SwiftUI

struct PlantModel: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Int
    let describing: String
    
    static let plants: [PlantModel] = [
        .init(name: "Bird of Paradise", image: "plant1", price: 40, describing: "Give them enough time and these pretty Bird of Paradise plants grow stunning orange flowers. As if they weren't impressive enough already!"),
        .init(name: "Swiss Cheese Plant", image: "plant2", price: 60, describing: "It's a Monstera, but a little more fancy, with these beautiful split leaves."),
        .init(name: "Areca Palm", image: "plant3", price: 80, describing: "If you're looking for something full, leafy and impactful which isn't too tricky to look after, you need an Areca palm. It doesn't need too much light either, so it's a good choice for any gloomier corners. "),
        .init(name: "The Chilli Plant", image: "plant4", price: 26, describing: "Everyone's fave letterbox flower brand recently launched its first collection of house plants and we want them all, to be honest. Pop this chilli plant in your kitchen and, with care, you should be able to enjoy home-grown peppers."),
        .init(name: "The Money Plant", image: "plant5", price: 32, describing: "These money plants always look so sweet popped on a window sill or small side table."),
        .init(name: "The Spiky Sansevieria", image: "plant6", price: 36, describing: "If you're the type to forget to water your plants often (or you've booked a holiday), this one is a good shout. It's a very low maintenance option and it looks pretty cute, too."),
        .init(name: "Extra Large Strelitzia", image: "plant7", price: 150, describing: "Big space? Then you'll need some big plants. This beautiful Strelitzia comes in a cool basket that gives it an extra boho touch."),
        .init(name: "Large Calathea Planter", image: "plant8", price: 60, describing: "Another big one here – and this one's pretty sophisticated. We're big fans of those deep green and purple leaves."),
        .init(name: "Spiral Cactus", image: "plant9", price: 59, describing: "Well, this is fun isn't it? We don't think we've ever seen a swirly cactus before. "),
        .init(name: "Lemon Tree", image: "plant10", price: 65, describing: "Add some mediterranean charm to your kitchen table or window sill with this cute little lemon tree.  ")]
}
