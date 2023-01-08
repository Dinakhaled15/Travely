//
//  Home.swift
//  Nano
//
//  Created by Ashwaq Azan on 15/06/1444 AH.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("PLAN")   .frame(maxWidth: .infinity,
                                      alignment: .leading).font(Font.custom("Gilroy-Medium", size: 24))
                Text("YOUR TRAVEL").frame(maxWidth: .infinity,
                                          alignment: .leading).font(Font.custom("Gilroy-Medium", size: 24))
                
                
                HStack{
                    VStack{
                        Text("Trip count down") .frame(maxWidth: .infinity,
                                                       alignment: .leading).font(Font.custom("Gilroy-Regular", size: 16)).padding(EdgeInsets(top: 0, leading: 8, bottom: 4, trailing: 8))
                        Text("Schedule your next trip").frame(maxWidth: .infinity,
                                                              alignment: .leading).font(Font.custom("Gilroy-Regular", size: 12)).foregroundColor(Color("subtitle")).padding(EdgeInsets(top: 0, leading: 8, bottom: 4, trailing: 8))
                    }
                    
                 
                }.frame(maxWidth: .infinity,minHeight: 85.0,
                        alignment: .leading).background(Color("sectionsBackground"))  .cornerRadius(10) .padding(EdgeInsets(top: 8, leading: 0, bottom: 16, trailing: 0))
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity,
                    alignment: .topLeading).padding(16)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
