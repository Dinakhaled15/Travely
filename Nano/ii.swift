//
//  ii.swift
//  Nano
//
//  Created by Dina Alhajj Ibrahim on 11/01/2023.
//
var data =
     
[EmergencyInfo(number:  997, type: NSLocalizedString("Ambulance", comment: ""), description: NSLocalizedString("For health issues", comment: "")),
        EmergencyInfo(number: 999, type:NSLocalizedString("Police", comment: ""), description: NSLocalizedString("For security issues", comment: "")),
         EmergencyInfo(number:998,  type:NSLocalizedString( "Civil Defense", comment: ""),  description: NSLocalizedString("For fires issues", comment: "")),
        EmergencyInfo(number:993,  type: NSLocalizedString("Traffic Accidents", comment: ""),  description: NSLocalizedString("For car accidents", comment: "")),
        EmergencyInfo(number:996,  type: NSLocalizedString( "Roads Security",comment: ""), description:NSLocalizedString("For road issues", comment: "")),
        EmergencyInfo(number: 966, type: NSLocalizedString( "Natural Disasters", comment: ""), description:NSLocalizedString("For rain.. and disasters", comment: "")),
        EmergencyInfo(number: 937,  type: NSLocalizedString("Ministry of Health", comment: ""),  description: NSLocalizedString("For health issues", comment: "")),
       EmergencyInfo(number: 911,  type: NSLocalizedString("Unified Emergency Number", comment: ""),  description: NSLocalizedString("For all emergency cases", comment: "")),
        EmergencyInfo(number:990,  type: NSLocalizedString( "Kingdom Emergency", comment: ""), description:  NSLocalizedString("No SIM card needed", comment: "")),
           ]

import SwiftUI

struct ii: View {
    @State var emergencyInfoFiltered = data
    @State private var searchText = ""
    

    
   
             
    var body: some View {
   
    
                
                    ScrollView{
                        
                        HStack(alignment: .top){
                            Text( "")
                            
                                .searchable(text: $searchText)
                                .onChange(of: searchText) { searchText in
                                 
                                    if !searchText.isEmpty {
                                        emergencyInfoFiltered = data.filter { $0.type.contains(searchText) }
                                    } else {
                                        emergencyInfoFiltered = data
                                    }
                                }
                            //                    Label("Profile", systemImage:"person")
                        }
                     
                            
                            ForEach(emergencyInfoFiltered) { dataItem in
                                HStack {
                                    Text(String(dataItem.number))
                                        .foregroundColor(.white)
                                        .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21))
                                   
                                        .padding()
                                 
                                        .frame(maxWidth: 70)
                                 
                                        .background(Color("colorgray"))       .cornerRadius(5.0)
                                        .padding(.trailing,8)
                                    
                                    
                                    
                                    
                                    VStack(alignment: .leading)
                                    {
                                        Text(dataItem.type)
                                            .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21)).foregroundColor(.white)
                                       
                                        Spacer().frame(height: 8)
                                        Text(dataItem.description)
                                            .foregroundColor(Color("subtitle"))
                                            .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 14))
                                    }
                                    
                                    Spacer()
                                    Image("phone1")
                                        .padding(.trailing)
                                    
                                    
                                    
                                }
                                
                                .padding(.bottom)
                                .background(.black)
                                .onTapGesture{
                                    let phone = "tel://"
                                    let phoneNumberformatted = phone + String(dataItem.number)
                                    guard let url = URL(string: phoneNumberformatted) else { return }
                                                  UIApplication.shared.open(url)
                                }
                                
                            }.padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                        

                       // emergency_page()
                        //            .navigationBarItems (leading: removeBtn, trailing:  View)
                        .navigationTitle("Emergency Numbers")
                        .accessibilityLabel(Text("Emergency Numbers"))
                     
//                            .navigationBarHidden(true)
//                            .navigationBarTitleDisplayMode(.inline)
                }
                   
      
        
   
    }
}
    struct ii_Previews: PreviewProvider {
        static var previews: some View {
            ii()
            .preferredColorScheme (.dark)
        }
    }
