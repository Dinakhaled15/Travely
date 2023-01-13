//
//  ComingSoonPopUp.swift
//  Travely
//
//  Created by Ashwaq Azan on 20/06/1444 AH.
//
import SwiftUI

extension View{
    func popupNavigationView<Content: View>(horizontalPadding: CGFloat = 120, show: Binding<Bool>, @ViewBuilder content: @escaping ()->Content)->some View{
        
        return self
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.center)
         
            .overlay {
            if show.wrappedValue{
                GeometryReader{proxy in
                    Color.primary.opacity(0.15).ignoresSafeArea()
                    
                    let size = proxy.size
                    NavigationView{
                        content()
                    }  .colorScheme(.dark)
                    .frame(width: size.width - horizontalPadding, height: size.height / 6, alignment: .center)
                        .cornerRadius(10)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.center)

                    
                }
            }
        }
        
    }
}
