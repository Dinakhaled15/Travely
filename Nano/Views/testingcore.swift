//
//  testingcore.swift
//  Nano
//
//  Created by Ashwaq Azan on 17/06/1444 AH.
//

import SwiftUI

struct testingcore: View {
    @FetchRequest(sortDescriptors: []) var checklist: FetchedResults<TravelChecklist>
    
    @Environment(\.managedObjectContext) var moc
  
    var body: some View {
        VStack {
            List(checklist) { item in
                Text(item.item ?? "Unknown")
            }
            
            Button("Add") {
                let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
                let lastNames = ["Granger", "Lovegood", "Potter", "Weasley"]

                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!

                let list = TravelChecklist(context: moc)
                list.id = UUID()
                list.item = "\(chosenFirstName) \(chosenLastName)"
                try? moc.save()
                // more code to come
            }

        }
    }
}

struct testingcore_Previews: PreviewProvider {
    static var previews: some View {
        testingcore()
    }
}
