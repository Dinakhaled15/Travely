//
//  SplashScreen.swift
//  Nano
//
//  Created by Ashwaq Azan on 17/06/1444 AH.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        NavigationView{
            if(isActive){
                if(UserDefaults.standard.bool(forKey: "IsScene") == false){
                    ContentView()
                    
                }else{
                    Home()
                }
              
            }else{
              
                Image("Logo")    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                    .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation{
                            self.isActive = true
                        }
                    
                    }
                }
                
            }
        }.navigationBarHidden(true).accentColor(Color("primary"))
       
            
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
