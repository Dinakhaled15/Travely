//
//  TravelPacking.swift
//  Nano
//
//  Created by Ashwaq Azan on 16/06/1444 AH.
//

import SwiftUI

struct TravelPacking: Identifiable {
    var id = UUID()
    let sectionName : String
    let packingItems : [PackingItemsModel]
}


struct PackingItemsModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
}
