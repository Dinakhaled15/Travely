//
//  PreTravelChecklist.swift
//  Nano
//
//  Created by Ashwaq Azan on 16/06/1444 AH.
//

import SwiftUI

struct PreTravelChecklist: View {
    init(){
        UITableView.appearance().backgroundColor = UIColor(Color.clear)
    }
    


    @State private var data = ["Electronics", "Documents","Clothes","Essentials"]
  
    

    @State private var data = [TravelPacking(sectionName: NSLocalizedString("Electronics", comment: ""),  packingItems: [PackingItemsModel(title: NSLocalizedString("Charger", comment: "")),PackingItemsModel(title:  NSLocalizedString("Laptop", comment: "")),]),
                               
                               TravelPacking(sectionName: NSLocalizedString("Documents", comment: ""),  packingItems: [PackingItemsModel(title:  NSLocalizedString("Passport", comment: "")),]),
                               
                               TravelPacking(sectionName:  NSLocalizedString("Clothes", comment: ""), packingItems: [PackingItemsModel(title: NSLocalizedString("Abaya", comment: "")) ,PackingItemsModel(title:  NSLocalizedString( "Underwear", comment: "")),]),
                               TravelPacking(sectionName: NSLocalizedString("Essentials", comment: ""),  packingItems: [PackingItemsModel(title: NSLocalizedString("Deodorant", comment: "")), PackingItemsModel(title: NSLocalizedString("Hair Brush", comment: "")),PackingItemsModel(title:   NSLocalizedString("Emergency Kit", comment: "")),]),
    ]
    @State private var selections = Set<String>()
    var body: some View {
        VStack{
            Text("pre_travel_checklist")
                .accessibilityLabel(Text("pre_travel_checklist"))
                .frame(maxWidth: .infinity,
                                               alignment:
                    .leading)
            .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21)).foregroundColor(.white).padding(EdgeInsets(top: 32, leading: 24, bottom: 16, trailing: 24))
            
            NavigationView {
                ScrollView {
                    ForEach(data, id: \.self) { dataItem in
                        PackingSections(section: dataItem)
                        
                            .animation(.default)
                    }
                 
                    
                }   .background(.black)
            }
            

            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).background(.black)
    }
}

struct PreTravelChecklist_Previews: PreviewProvider {
    static var previews: some View {
        PreTravelChecklist()
    }
}
