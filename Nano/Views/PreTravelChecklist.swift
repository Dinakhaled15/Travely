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
