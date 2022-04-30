//
//  PlaceView.swift
//  BabyAndBee
//
//  Created by Robert Linnemann on 4/30/22.
//

import SwiftUI

struct PlaceView: View {
    var place: Place
    @State var favorite: Bool
    var body: some View {
        VStack {
            ZStack {
                Image(systemName: place.symbolsName).resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                VStack {
                    HStack {
                        Spacer()
                        Image(systemName: $favorite.wrappedValue ? "heart.fill" : "heart").frame(width: 44, height: 44, alignment: .topTrailing).padding()
                            .onTapGesture {
                                favorite = !favorite
                            }

                    }
                    Spacer()
                }
            }
            HStack() {
                Text(place.name).frame(alignment: .leading)
                    .font(.headline)
                Spacer()
                Text(place.price).frame(alignment: .trailing)
                    .font(.body)
            }
            HStack() {
                Text(place.distance).frame(alignment: .leading)
                    .font(.caption)
                Spacer()
                Text(place.dateString).frame(alignment: .trailing)
                    .font(.caption)
            }
        }.padding(8).background(.white).cornerRadius(20)
            .accessibilityAction(named: Text("favorite")) {
                favorite = !favorite
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("\(place.name) \(place.price) \(place.dateString) \(place.distance)")

    }
}

struct PlaceView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceView(place: Place(id: UUID(), symbolsName: "music.note.house", name: "Sax Shed", price: "$99 night", distance: "500 miles away", dateString: "June 1-6", favorite: true, wishList: false), favorite: true)
    }
}
