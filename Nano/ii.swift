//
//  ii.swift
//  Nano
//
//  Created by Dina Alhajj Ibrahim on 11/01/2023.
//
var data =
        [EmergencyInfo(number:  NSLocalizedString("997", comment: ""), type: NSLocalizedString("Ambulance", comment: ""), description: NSLocalizedString("For health issues", comment: "")),
        EmergencyInfo(number: NSLocalizedString("999", comment: ""), type:NSLocalizedString("Police", comment: ""), description: NSLocalizedString("For security issues", comment: "")),
         EmergencyInfo(number:NSLocalizedString("998", comment: ""),  type:NSLocalizedString( "Civil Defense", comment: ""),  description: NSLocalizedString("For fires issues", comment: "")),
        EmergencyInfo(number:NSLocalizedString("993", comment: ""),  type: NSLocalizedString("Traffic Accidents", comment: ""),  description: NSLocalizedString("For car accidents", comment: "")),
        EmergencyInfo(number:NSLocalizedString("996",comment: ""),  type: NSLocalizedString( "Roads Security",comment: ""), description:NSLocalizedString("For road issues", comment: "")),
        EmergencyInfo(number:NSLocalizedString( "966", comment: ""), type: NSLocalizedString( "Natural Disasters", comment: ""), description:NSLocalizedString("For rain.. and disasters", comment: "")),
        EmergencyInfo(number: NSLocalizedString("937", comment: ""),  type: NSLocalizedString("Ministry of Health", comment: ""),  description: NSLocalizedString("For health issues", comment: "")),
       EmergencyInfo(number: NSLocalizedString("911", comment: ""),  type: NSLocalizedString("Unified Emergency Number", comment: ""),  description: NSLocalizedString("For all emergency cases", comment: "")),
        EmergencyInfo(number:NSLocalizedString("990",comment: ""),  type: NSLocalizedString( "Kingdom Emergency", comment: ""), description:  NSLocalizedString("No SIM card needed", comment: "")),
           ]

import SwiftUI

struct ii: View {
    @State var emergencyInfoFiltered = data
    @State private var searchText = ""
    

    
   
             
    var body: some View {
        
        NavigationView{
                ScrollView{
                    HStack(alignment: .top){
                        Text( "\(searchText)")
                        
                            .searchable(text: $searchText, placement: .navigationBarDrawer)
                            .onChange(of: searchText) { searchText in
                             
                                if !searchText.isEmpty {
                                    emergencyInfoFiltered = data.filter { $0.type.contains(searchText) }
                                } else {
                                    emergencyInfoFiltered = data
                                }
                            }
                        //                    Label("Profile", systemImage:"person")
                    }
                    .padding(.top, 1.0)
                        
                        ForEach(emergencyInfoFiltered) { dataItem in
                            HStack {
                                Text(dataItem.number)
                                    .foregroundColor(.white)
                                    .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 22))
                                
                                    .padding()
                                
                                
                                    .overlay( RoundedRectangle(cornerRadius: 2)
                                        .stroke(.black))
                                    .background(Color("colorgray"))
                                    .padding(.trailing)
                                
                                
                                
                                
                                VStack(alignment: .leading)
                                {
                                    Text(dataItem.type)
                                        .font(.title)
                                        .foregroundColor(.gray)
                                    Text(dataItem.description)
                                        .foregroundColor(.gray)
                                        .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 15))
                                }
                                
                                Spacer()
                                Image("phone1")
                                    .padding(.trailing)
                                
                                
                                
                            }
                            
                            .padding(.bottom)
                            .background(.black)
                            
                        }
                    

                   // emergency_page()
                    //            .navigationBarItems (leading: removeBtn, trailing:  View)
                    .navigationTitle("Emergency Numbers")
                    .accessibilityLabel(Text("Emergency Numbers"))
                    .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 30))
                    
            }                           

        }
    }
}
    struct ii_Previews: PreviewProvider {
        static var previews: some View {
            ii()
            .preferredColorScheme (.dark)
        }
    }
