//
//  emergency page.swift
//  Nano
//
//  Created by Dina Alhajj Ibrahim on 08/01/2023.
//

import SwiftUI
struct EmergencyInfo: Identifiable {
    var id = UUID()
    
    let number : Int;
    let type : String;
    let description : String
}

//struct emergency_page: View {
//    
//    @State private var addBorder: Bool = false
//    @State private var searchText = ""
//    
//    @State var data =
//        [EmergencyInfo(number:  NSLocalizedString("997", comment: ""), type: NSLocalizedString("Ambulance", comment: ""), description: NSLocalizedString("For health issues", comment: "")),
//        EmergencyInfo(number: NSLocalizedString("999", comment: ""), type:NSLocalizedString("Police", comment: ""), description: NSLocalizedString("For security issues", comment: "")),
//         EmergencyInfo(number:NSLocalizedString("998", comment: ""),  type:NSLocalizedString( "Civil Defense", comment: ""),  description: NSLocalizedString("For fires issues", comment: "")),
//        EmergencyInfo(number:NSLocalizedString("993", comment: ""),  type: NSLocalizedString("Traffic Accidents", comment: ""),  description: NSLocalizedString("For car accidents", comment: "")),
//        EmergencyInfo(number:NSLocalizedString("996",comment: ""),  type: NSLocalizedString( "Roads Security",comment: ""), description:NSLocalizedString("For road issues", comment: "")),
//        EmergencyInfo(number:NSLocalizedString( "966", comment: ""), type: NSLocalizedString( "Natural Disasters", comment: ""), description:NSLocalizedString("For rain.. and disasters", comment: "")),
//        EmergencyInfo(number: NSLocalizedString("937", comment: ""),  type: NSLocalizedString("Ministry of Health", comment: ""),  description: NSLocalizedString("For health issues", comment: "")),
//       EmergencyInfo(number: NSLocalizedString("911", comment: ""),  type: NSLocalizedString("Unified Emergency Number", comment: ""),  description: NSLocalizedString("For all emergency cases", comment: "")),
//        EmergencyInfo(number:NSLocalizedString("990",comment: ""),  type: NSLocalizedString( "Kingdom Emergency", comment: ""), description:  NSLocalizedString("No SIM card needed", comment: "")),
//           ]
//                      
//                      
//               
//        
//        
//   
//    
//    var body: some View {
//       
//            
//            VStack {
//                
//                Text("Emergency Numbers")
//                
//                    //.offset(y: 7)
//                    .padding(.trailing,75)
//                    .foregroundColor(.white)
//                    .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 24))
//                .padding(.bottom,2)
//               search_bar_tool()
//                    .frame(height:60)
//            
//                
//                    List() {
//                        
//                    Section {
//                        ForEach(data) { dataItem in
//                            HStack {
//                                Text(dataItem.number)
//                                    .foregroundColor(.white)
//                                    .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 22))
//                                
//                                    .padding()
//                                
//                                
//                                    .overlay( RoundedRectangle(cornerRadius: 2)
//                                        .stroke(.black))
//                                    .background(Color("colorgray"))
//                                    .padding(.trailing)
//                                
//                                
//                                
//                                
//                                VStack(alignment: .leading)
//                                {
//                            Text(dataItem.type)
//                                        .font(.title)
//                                        .foregroundColor(.gray)
//                                    Text(dataItem.description)
//                                        .foregroundColor(.gray)
//                                        .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 15))
//                                }
//                                
//                                Spacer()
//                                Image("phone1")
//                                    .padding(.trailing)
//                                
//                                
//                                
//                            }
//                            
//                            .padding(.bottom)
//                            .background(.black)
//                            
//                        }
//                        
//                    }
//                    
//                    }
//
//                    .listStyle(.plain)
//                
//                
//                
//                
//                
//                
//                
//            }
//            //.navigationTitle( "Explore")
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).background(.black)
//            .scrollContentBackground(.hidden)
//           // .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
//      
//        
//            
//            
//        
//        
//    }
//    struct emergency_page_Previews: PreviewProvider {
//        static var previews: some View {
//            emergency_page()
//                .preferredColorScheme (.dark)
//        }
//    }
//    
//
//                        }
//
//
//
//



