//
//  PackingItems.swift
//  Nano
//
//  Created by Ashwaq Azan on 17/06/1444 AH.
//

import SwiftUI

struct PackingItems: View {
    let item: PackingItemsModel
    @State private var isChecked: Bool = false
    var body: some View {
            HStack {
                
                Image(systemName: isChecked ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.white.opacity(0.2))
                Text(item.title).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 16)).foregroundColor(.white)
            }   .onTapGesture { isChecked.toggle() }
        
    }
}

struct PackingItems_Previews: PreviewProvider {
    static var previews: some View {
        PackingItems(item: PackingItemsModel(title: "test"))
    }
}
