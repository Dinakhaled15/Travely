//
//  search bar.swift
//  Nano
//
//  Created by Dina Alhajj Ibrahim on 08/01/2023.
//



import SwiftUI

struct search_bar_tool: View {
    init () {
        UITableView.appearance () .backgroundColor = .yellow
    }
    @State private var searchText = ""
    var body: some View {
      
        
        VStack{
            NavigationStack {
              
            }
            .searchable(text: $searchText)
            

        }
    }
    }
    


struct search_bar_tool_Previews: PreviewProvider {
    static var previews: some View {
        search_bar_tool()
    }
}
