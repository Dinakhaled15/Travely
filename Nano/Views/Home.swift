//
//  Home.swift
//  Nano
//
//  Created by Ashwaq Azan on 15/06/1444 AH.
//
//test
import SwiftUI

struct Home: View {
    @State private var birthDate = Date.now
    @State var showPopup: Bool = false
    init() {
          //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: Locale.preferredLanguages[0] == "en" ? "Gilroy-Regular": "Tajawal-Regular", size: 34 )!]
        
     

          //Use this if NavigationBarTitle is with displayMode = .inline
          //UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 20)!]
      }
    var body: some View {
  
            VStack{
                
                Spacer()
     
//                                          alignment: .leading).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 34))   .fontWeight(.heavy).foregroundColor(.white)
                VStack{
                    DatePicker(selection: $birthDate, in: Date.now..., displayedComponents: .date) {
                                    Text("Your_next_trip_on")  .accessibilityLabel(Text("Your_next_trip_on")).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Regular": "Tajawal-Regular", size: 16))
                    }    .colorScheme(.dark) .accentColor(Color("primary")) .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)).foregroundColor(Color("subtitle"))
                }.background(Color("sectionsBackground")) .cornerRadius(10)
              
                
             
                
                Text("hello_traveler")
                    .accessibilityLabel(Text("hello_traveler"))
                    .frame(maxWidth: .infinity,
                                      alignment: .leading).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Regular": "Tajawal-Regular", size: 16)).foregroundColor(.white).padding(EdgeInsets(top: 24, leading: 0, bottom: 0, trailing: 0))
                
                HStack{
                    VStack{
                        NavigationLink(destination: PreTravelChecklist() ){
                            VStack{
                                Spacer()
                                Text("pre_travel_checklist").multilineTextAlignment(.center) .accessibilityLabel(Text("pre_travel_checklist"))
                                    .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 20)).foregroundColor(.white)
                                Spacer()
                          
                                Image(systemName: "chevron.forward").foregroundColor(Color("primary")).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 16)).frame(maxWidth: .infinity, alignment: .trailing)
                            }.frame(maxWidth: 165.0,maxHeight: 150,
                                    alignment: .center)
                                .background(Color("sectionsBackground"))  .cornerRadius(10) .padding(EdgeInsets(top: 8, leading: 0, bottom: 4, trailing: 0))
                        }
                
                        
                        Text("staying")
                            .accessibilityLabel(Text("staying"))
                            .frame(maxWidth: 165.0,maxHeight: 300,
                                                  alignment: .center).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 20)).foregroundColor(Color("subtitle"))
                            .background(Color("sectionsBackground"))  .cornerRadius(10) .padding(EdgeInsets(top: 4, leading: 0, bottom: 8, trailing: 0)).onTapGesture{
                                showPopup.toggle()
                            }
                    }
                    Spacer()
                    VStack{
                        
                        Text("places")
                            .accessibilityLabel(Text("places"))
                            .frame(maxWidth: 165.0,maxHeight: 300,
                                             alignment: .center).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 20)).foregroundColor(Color("subtitle"))
                            .background(Color("sectionsBackground"))  .cornerRadius(10) .padding(EdgeInsets(top: 8, leading: 0, bottom: 4, trailing: 0)).onTapGesture{
                                showPopup.toggle()
                            }
                        NavigationLink(destination: ii()){
                        VStack{
                            Spacer()
                            Text("Emergency Numbers")
                                .accessibilityLabel(Text("Emergency Numbers"))
                                .multilineTextAlignment(.center)
                                .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 20)).foregroundColor(.white)
                            Spacer()
                            Image(systemName:  "chevron.forward").foregroundColor(Color("primary")).padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 16)).frame(maxWidth: .infinity, alignment: .trailing)
                        }.frame(maxWidth: 165.0,maxHeight: 150,
                                alignment: .center)
                        .background(Color("sectionsBackground"))  .cornerRadius(10) .padding(EdgeInsets(top: 8, leading: 0, bottom: 4, trailing: 0))
                    }
                     
                    }
                }
                
              
                Spacer()
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity,
                    alignment: .topLeading).padding(16).background(.black).navigationBarBackButtonHidden(true)
                .navigationTitle("your_travel")
                    .accessibilityLabel(Text("your_travel"))
            .popupNavigationView(horizontalPadding: 100,show: $showPopup) {
                VStack{
                    
                    Spacer()
                    Text("Coming_soon") .accessibilityLabel(Text("Coming_soon"))
                        .foregroundColor(.white)  .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 20))
                    Spacer().frame(height: 16)
                    Button("Close"){ withAnimation{ showPopup.toggle()}}
                        .foregroundColor(Color("primary"))
                    Spacer()
                  
                }
                }
           
            
        

      
        
    
       
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()  .preferredColorScheme (.dark)
    }
}
