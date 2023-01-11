//
//  ContentView.swift
//  Nano
//
//  Created by Dina Alhajj Ibrahim on 08/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
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
                        .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21))
                        .foregroundColor(.white)
                    
                    Text("Plan your Trip and Enjoy a Stress-free Travel full of Adventures and Memories. ")
                        .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21))
                        .foregroundColor(.white)
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: Home()){
                        Text("Get Started")
                        .font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 21))
                        .padding(5)
                        
                        .cornerRadius(10)
                        .opacity(0.8)
                        .foregroundColor(Color("ColorD"))
                    }
                   
                    
                }
                
                
                .textFieldStyle(.roundedBorder)
                .frame(width:400, height: 550, alignment: .topLeading)
            }}
    }
    
    
    
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}

