//
//  NanoApp.swift
//  Nano
//
//  Created by Dina Alhajj Ibrahim on 08/01/2023.
//

import SwiftUI

@main
struct NanoApp: App {
    @StateObject private var dataController = DataController()
   
    var body: some Scene {
        
        WindowGroup {
            SplashScreen()
                .environment(\.managedObjectContext, dataController.container.viewContext)
               
                .preferredColorScheme (.dark)
        }
    }
}
