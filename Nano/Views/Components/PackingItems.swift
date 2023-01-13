//
//  PackingItems.swift
//  Nano
//
//  Created by Ashwaq Azan on 17/06/1444 AH.
//

import SwiftUI

struct PackingItems: View {
    var item: PackingItemsModel
    var item2: TravelChecklist
    //@State private var isChecked: Bool = false
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
            HStack {
                
                Image(systemName: item.isChecked ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.white.opacity(0.2))
                Text(item.title).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 16)).foregroundColor(.white)
                Spacer()
                Button(action: {
                    moc.delete(item2)
                                
                                do {
                                    try moc.save()
                                } catch {
                                    print(error.localizedDescription)
                                }
                }) {
                    Image(systemName: "trash.fill").foregroundColor(Color("primary"))
                }.padding()
                
                
            }   .onTapGesture {
             item2.checked = !item2.checked
                
                  try? moc.save()
            }
        
    }
}

//struct PackingItems_Previews: PreviewProvider {
//    static var previews: some View {
//        PackingItems(item: PackingItemsModel(title: "Emergency Kit", section: "Essentials", isChecked: false))
//    }
//}
