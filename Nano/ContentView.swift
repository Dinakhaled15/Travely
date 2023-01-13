//
//  ContentView.swift
//  Nano
//
//  Created by Dina Alhajj Ibrahim on 08/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
   
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                //            Spacer()
                VStack {
                    Image("DINA1")
                        . resizable()
                        .padding ()
                        .aspectRatio(1, contentMode: .fit)
                        .padding()
                        .offset(x: 0, y: -50)
                    
                    
                    Text("Adventure Awaits")
                        .accessibilityLabel(Text("Adventure Awaits"))
                        .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 16))
                        .foregroundColor(Color("subtitle"))
                    
                    Text("Plan your Trip and Enjoy a Stress-free Travel full of Adventures and Memories. ")
                        .accessibilityLabel(Text("Plan your Trip and Enjoy a Stress-free Travel full of Adventures and Memories. "))
                        .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 16))
                        .foregroundColor(.white)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: Home()){
                        Text("Get Started")
                            .accessibilityLabel(Text("Get Started"))
                        .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21))
                        .padding(5)
                        
                        .cornerRadius(10)
                        .opacity(0.8)
                        .foregroundColor(Color("ColorD"))
                    }.simultaneousGesture(TapGesture().onEnded{
                        if(UserDefaults.standard.bool(forKey: "IsScene") == false){
                            @State  var data = [PackingItemsModel(title: "Charger", section: "Electronics", isChecked: false),PackingItemsModel(title: "Laptop", section: "Electronics", isChecked: false), PackingItemsModel(title: "Passport", section: "Documents", isChecked: false), PackingItemsModel(title: "Abaya", section: "Clothes", isChecked: false),PackingItemsModel(title: "Underwear", section: "Clothes", isChecked: false), PackingItemsModel(title: "Deodorant", section: "Essentials", isChecked: false),PackingItemsModel(title: "Hair", section: "Essentials", isChecked: false),PackingItemsModel(title: "Brush", section: "Essentials", isChecked: false),PackingItemsModel(title: "Emergency Kit", section: "Essentials", isChecked: false)
                            
                            ]
                            
                    

                          
                          data.forEach { dataItem in
                              let list = TravelChecklist(context: moc)
                                list.id = UUID()
                                list.item = dataItem.title
                                list.section = dataItem.section
                                list.checked = dataItem.isChecked
                              
                                try? moc.save()
                      
                            }
                            
                          
                          
                            UserDefaults.standard.setValue(true, forKey: "IsScene")
                        }
                      
                       
                    })
                   
                    
                }
                
                
                .textFieldStyle(.roundedBorder)
                .frame(width:400, height: 550, alignment: .topLeading)
            }.navigationBarBackButtonHidden(true)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}

