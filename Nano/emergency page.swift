//
//  emergency page.swift
//  Nano
//
//  Created by Dina Alhajj Ibrahim on 08/01/2023.
//

import SwiftUI
struct EmergencyInfo: Identifiable {
    var id = UUID()
    
    let number : String;
    let type : String;
    let description : String
}

struct emergency_page: View {
    
    @State private var addBorder: Bool = false
    @State private var searchText = ""
    
    @State var data = [
        EmergencyInfo(number: "997", type: "Ambulance", description: "For health issues"),
        EmergencyInfo(number: "999", type: "Police", description: "For security issues"),
        EmergencyInfo(number: "998", type: "Civil Defense", description: "For fires issues"),
        EmergencyInfo(number: "993", type: "Traffic Accidents", description: "For car accidents"),
        EmergencyInfo(number: "996", type: "Roads Security", description: "For road issues"),
        EmergencyInfo(number: "966", type: "Natural Disastersy", description: "For rain.. etc disasters"),
        EmergencyInfo(number: "937", type: "Ministry of Health", description: "For health issues"),
        EmergencyInfo(number: "911", type: "Unified Emergency Number", description: "For all emergency cases"),
        EmergencyInfo(number: "990", type: "Kingdom Emergency", description: "No SIM card needed"),
               ]
        
        
   
    
    var body: some View {
       
            
            VStack {
                Text("Emergency Numbers")
                
                    .padding(.trailing,80)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    //.padding(.bottom)
                
                    List {
                        
                    Section {
                        ForEach(data) { dataItem in
                            HStack {
                                Text(dataItem.number)
                                    .foregroundColor(.white)
                                     
                                
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
                                    
                                }
                                
                                Spacer()
                                Image("phone1")
                                    .padding(.trailing)
                                
                                
                                
                            }
                            
                            .padding(.bottom)
                            .background(.black)
                            
                        }
                        
                    }
                    
                }
                    .listStyle(.plain)
                
                
                
                
                
                
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).background(.black)
            .scrollContentBackground(.hidden)
        
            
            
        
        
    }
    struct emergency_page_Previews: PreviewProvider {
        static var previews: some View {
            emergency_page()
                .preferredColorScheme (.dark)
        }
    }
    

                        }



