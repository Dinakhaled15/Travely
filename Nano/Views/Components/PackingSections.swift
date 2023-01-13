//
//  PackingSections.swift
//  Nano
//
//  Created by Ashwaq Azan on 17/06/1444 AH.
//

import SwiftUI

struct PackingSections: View {
    @State private var isExpanded: Bool = false
    
    let section: String
    @FetchRequest(sortDescriptors: []) var checklist: FetchedResults<TravelChecklist>
    
    @Environment(\.managedObjectContext) var moc
    private func deleteTask(at offsets: IndexSet) {
         offsets.forEach { index in
             let task = checklist[index]
             moc.delete(task)
             
             do {
                 try moc.save()
             } catch {
                 print(error.localizedDescription)
             }
         }
     }
    var body: some View {
        content
          
    }
    
    private var content: some View {
        VStack(alignment: .leading, spacing: 8) {
            header.frame(maxWidth: .infinity,minHeight: 62.0 , alignment: .leading).background(Color("sectionsBackground")).cornerRadius(10).padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
            
            if isExpanded {
                Group {
                    
                    ForEach(checklist.filter {$0.section==self.section}) { item in
                        PackingItems(item: PackingItemsModel(title: item.item ?? "", section: item.section ?? "", isChecked: item.checked) , item2: item)
                    }
                    AddPackingItem(section: section)
                }
                .padding(.leading)
            }
         
        }
    }
    
    private var header: some View {
   
     
        Text(section).font(Font.custom(Locale.preferredLanguages[0] == "en" ? "Gilroy-Medium": "Tajawal-Medium", size: 16)).foregroundColor(.white)
            .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
       
        .onTapGesture { isExpanded.toggle() }
    }
}


struct PackingSections_Previews: PreviewProvider {
    static var previews: some View {
        PackingSections(section: "Electronics")
    }
}

