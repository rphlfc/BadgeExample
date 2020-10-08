//
//  ContentView.swift
//  BadgeExample
//
//  Created by Raphael Cerqueira on 08/10/20.
//

import SwiftUI

struct ContentView: View {
    @State var hasNotification = true
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9887183309, green: 0.8061560988, blue: 0.6014263034, alpha: 1)).ignoresSafeArea()
            
            Button(action: {}, label: {
                ZStack(alignment: .topTrailing) {
                    Image(systemName: "bell")
                        .font(.system(size: 48))
                        .foregroundColor(Color(#colorLiteral(red: 0.9975888133, green: 0.5709193349, blue: 0.3004384339, alpha: 1)))
                        .padding()
                        .clipShape(Circle())
                    
                    if hasNotification {
                        Text("3")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                            .padding(6)
                            .background(Color.red)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 0)
                            .offset(x: -12)
                    }
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
