//
//  DataController.swift
//  Nano
//
//  Created by Ashwaq Azan on 17/06/1444 AH.
//
import CoreData
import Foundation
class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "PachingChecklist")
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }

}
