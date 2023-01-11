//
//  Home.swift
//  Nano
//
//  Created by Ashwaq Azan on 15/06/1444 AH.
//

import SwiftUI

struct Home: View {

    @State private var date = Date()
    var body: some View {
       
            VStack{
                Text("plan")   .frame(maxWidth: .infinity,
                                      alignment: .leading).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 24)).foregroundColor(.white)
                Text("your_travel").frame(maxWidth: .infinity,
                                          alignment: .leading).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 24)).foregroundColor(.white)
                
                
                HStack{
                    VStack{
                        Text("trip_count_down") .frame(maxWidth: .infinity,
                                                       alignment: .leading).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Regular": "Tajawal-Regular", size: 16)).padding(EdgeInsets(top: 0, leading: 8, bottom: 4, trailing: 8)).foregroundColor(.white)
                        Text("schedule_your_next_trip").frame(maxWidth: .infinity,
                                                              alignment: .leading).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Regular": "Tajawal-Regular", size: 12)).foregroundColor(Color("subtitle")).padding(EdgeInsets(top: 0, leading: 8, bottom: 4, trailing: 8))
                    }
                    
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(Color("primary")).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 32))
             
                    
                    
                 
                }.frame(maxWidth: .infinity,minHeight: 85.0,
                        alignment: .leading).background(Color("sectionsBackground"))  .cornerRadius(10) .padding(EdgeInsets(top: 8, leading: 0, bottom: 16, trailing: 0))
                
                Text("hello_traveler")   .frame(maxWidth: .infinity,
                                      alignment: .leading).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Regular": "Tajawal-Regular", size: 16)).foregroundColor(.white).padding(EdgeInsets(top: 16, leading: 0, bottom: 0, trailing: 0))
                
                HStack{
                    VStack{
                        NavigationLink(destination: PreTravelChecklist() ){
                            VStack{
                                Spacer()
                                Text("pre_travel_checklist").multilineTextAlignment(.center).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21)).foregroundColor(.white)
                                Spacer()
                          
                                Image(systemName: Locale.preferredLanguages[0] == "en" ? "arrow.right" : "arrow.left").foregroundColor(Color("primary")).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 16)).frame(maxWidth: .infinity, alignment: .trailing)
                            }.frame(maxWidth: 165.0,maxHeight: 150,
                                    alignment: .center)
                                .background(Color("sectionsBackground"))  .cornerRadius(10) .padding(EdgeInsets(top: 8, leading: 0, bottom: 4, trailing: 0))
                        }
                
                        
                        Text("staying").frame(maxWidth: 165.0,maxHeight: 300,
                                                  alignment: .center).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21)).foregroundColor(Color("subtitle"))
                            .background(Color("sectionsBackground"))  .cornerRadius(10) .padding(EdgeInsets(top: 4, leading: 0, bottom: 8, trailing: 0))
                    }
                    Spacer()
                    VStack{
                        
                        Text("places").frame(maxWidth: 165.0,maxHeight: 300,
                                             alignment: .center).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21)).foregroundColor(Color("subtitle"))
                            .background(Color("sectionsBackground"))  .cornerRadius(10) .padding(EdgeInsets(top: 8, leading: 0, bottom: 4, trailing: 0))
                        NavigationLink(destination: ii()){
                        VStack{
                            Spacer()
                            Text("emergency_numbers").multilineTextAlignment(.center).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21)).foregroundColor(.white)
                            Spacer()
                            Image(systemName:  Locale.preferredLanguages[0] == "en" ? "arrow.right" : "arrow.left").foregroundColor(Color("primary")).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 16)).frame(maxWidth: .infinity, alignment: .trailing)
                        }.frame(maxWidth: 165.0,maxHeight: 150,
                                alignment: .center)
                        .background(Color("sectionsBackground"))  .cornerRadius(10) .padding(EdgeInsets(top: 8, leading: 0, bottom: 4, trailing: 0))
                    }
                     
                    }
                }
                
              
            
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity,
                    alignment: .topLeading).padding(16).background(.black).navigationBarBackButtonHidden(true)
      
        
    
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
