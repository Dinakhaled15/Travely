//
//  ContentView.swift
//  Nano
//
//  Created by Dina Alhajj Ibrahim on 08/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
            Image("DINA1")
                . resizable()
                .padding ()
                .aspectRatio(1, contentMode: .fit)
                .padding()
                .offset(x: 0, y: -50)
            
//            VStack {
                Text("Adventure Awaits")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Text("Plan your Trip and Enjoy a Stress-free Travel full of Adventures and Memories ")
                    .foregroundColor(.white)
                    .padding()
                
                
            }
            
            
            
            
        }
        
        
        
        
    }
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
}

