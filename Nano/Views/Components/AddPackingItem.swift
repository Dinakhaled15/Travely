//
//  AddPackingItem.swift
//  Nano
//
//  Created by Ashwaq Azan on 17/06/1444 AH.
//

import SwiftUI

struct AddPackingItem: View {
    @State private var text: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "plus")
                .foregroundColor(Color.white.opacity(0.2))
            TextField("new item", text: $text).foregroundColor(.white).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 12))
        }}
}

struct AddPackingItem_Previews: PreviewProvider {
    static var previews: some View {
        AddPackingItem()
    }
}
