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
    

//
//    @State private var data = ["Electronics", "Documents","Clothes","Essentials"]
//  
//    

    @State private var data =
    
    [ NSLocalizedString("Electronics", comment: "")
      , NSLocalizedString("Documents", comment: ""),  NSLocalizedString("Clothes", comment: ""), NSLocalizedString("Essentials", comment: "")
      
    ]
    @State private var selections = Set<String>()
    var body: some View {
 
            
            
                ScrollView {
                    ForEach(data, id: \.self) { dataItem in
                        PackingSections(section: dataItem)
                        
                            .animation(.default)
                    }
                 
                    .navigationTitle("pre_travel_checklist")
                    .accessibilityLabel(Text("pre_travel_checklist"))
                }   .background(.black)
   
            

            
            
      
    }
}

struct PreTravelChecklist_Previews: PreviewProvider {
    static var previews: some View {
        PreTravelChecklist()  .preferredColorScheme (.dark)
    }
}
