//
//  Place.swift
//  BabyAndBee
//
//  Created by Robert Linnemann on 4/29/22.
//

import SwiftUI

struct Place: Identifiable {
    var id: UUID = UUID()
    var symbolsName: String
    var name: String
    var price: String
    var distance: String
    var dateString: String
    var favorite: Bool
    var wishList: Bool
}
