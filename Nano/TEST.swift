//
//  TEST.swift
//  Nano
//
//  Created by Dina Alhajj Ibrahim on 08/01/2023.
//

import SwiftUI

struct TEST: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.custom(FontsManager.Gilory.bold, size: 17))
        }
    }
    
    struct TEST_Previews: PreviewProvider {
        static var previews: some View {
            TEST()
        }
    }
}
