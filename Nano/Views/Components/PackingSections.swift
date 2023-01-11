//
//  PackingSections.swift
//  Nano
//
//  Created by Ashwaq Azan on 17/06/1444 AH.
//

import SwiftUI

struct PackingSections: View {
    @State private var isExpanded: Bool = false
    
    let section: TravelPacking
    
    var body: some View {
        content
          
    }
    
    private var content: some View {
        VStack(alignment: .leading, spacing: 8) {
            header.frame(maxWidth: .infinity,minHeight: 62.0 , alignment: .leading).background(Color("sectionsBackground")).cornerRadius(10).padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
            
            if isExpanded {
                Group {
                    
                    ForEach(section.packingItems) { item in
                        PackingItems(item: item)
                    }
                    AddPackingItem()
                }
                .padding(.leading)
            }
            Divider()
        }
    }
    
    private var header: some View {
   
     
        Text(section.sectionName).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 16)).foregroundColor(.white)
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
       
        .onTapGesture { isExpanded.toggle() }
    }
}


struct PackingSections_Previews: PreviewProvider {
    static var previews: some View {
        PackingSections(section: TravelPacking(sectionName: "Electronics", packingItems: [PackingItemsModel(title: "Charger"),PackingItemsModel(title: "Laptop")]))
    }
}

