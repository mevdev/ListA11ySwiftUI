//
//  BabyAndBeeApp.swift
//  BabyAndBee
//
//  Created by Robert Linnemann on 4/29/22.
//

import SwiftUI

@main
struct BabyAndBeeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(places: [Place(id: UUID(), symbolsName: "music.note.house", name: "Sax Shed", price: "$99 night", distance: "500 miles away", dateString: "June 1-6", favorite: true, wishList: false),
                                 Place(id: UUID(), symbolsName: "homekit", name: "Quaint Hillside Home", price: "$1,199 night", distance: "2000 miles away", dateString: "June 2-7", favorite: false, wishList: false),
                                 Place(id: UUID(), symbolsName: "house.fill", name: "House Alberta District", price: "$299 night", distance: "1500 miles away", dateString: "June 1-6", favorite: false, wishList: false),
                                 Place(id: UUID(), symbolsName: "house.circle", name: "Lake Shanty", price: "$299 night", distance: "100 miles away", dateString: "June 1-6", favorite: true, wishList: false),
                                 Place(id: UUID(), symbolsName: "house", name: "Simple Room", price: "$68 night", distance: "50 miles away", dateString: "June 1-6", favorite: false, wishList: false)
                                ])
        }
    }
}
