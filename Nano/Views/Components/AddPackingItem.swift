//
//  AddPackingItem.swift
//  Nano
//
//  Created by Ashwaq Azan on 17/06/1444 AH.
//

import SwiftUI

struct AddPackingItem: View {
    let section: String
    @State private var text: String = ""
    @Environment(\.managedObjectContext) var moc
    var body: some View {
        
        HStack {
            Image(systemName: "plus")
                .foregroundColor(Color.white.opacity(0.2))
            TextField("New_Item", text: $text).foregroundColor(.white).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 12)).onSubmit {
                let todoItem = TravelChecklist(context: moc)
                todoItem.id = UUID()
                todoItem.item = text
                todoItem.section = section
                todoItem.checked = false
                
                  try? moc.save()
                text = ""
            }
        }.padding(.bottom)}
}

struct AddPackingItem_Previews: PreviewProvider {
    static var previews: some View {
        AddPackingItem(section: "")
    }
}
