//
//  ContentView.swift
//  BabyAndBee
//
//  Created by Robert Linnemann on 4/29/22.
//

import SwiftUI

struct ContentView: View {
    
    var places: [Place]
    var body: some View {
        VStack {
            HeaderView()
            //NavigationView {
            List(places) { place in
                //NavigationLink(destination: Text("here")) {
                PlaceView(place: place, favorite: place.favorite)
                    .listRowSeparator(.hidden)
                //}
            }.listStyle(.sidebar)
                    .navigationBarTitle(Text("Be Here Now"))
           // }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(places: [Place(id: UUID(), symbolsName: "homekit", name: "Sax Shed", price: "$99 night", distance: "500 miles away", dateString: "June 1-6", favorite: false, wishList: false)])
    }
}
