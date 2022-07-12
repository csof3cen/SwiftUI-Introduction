//
//  ContentView.swift
//  LogoButton
//
//  Created by S. Moustapha Sy Ndoye on 12/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var showIcon = false
    
    var body: some View {
        VStack(spacing: 30) {
            if(showIcon){
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 170, height: 170)
                    .clipped()
                    .padding(.top, 180)
            }
            Spacer()
            VStack(alignment: .leading, spacing: 5) {
                Text("My first SwiftUI app")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                Text("SwiftUI makes developing iOS apps super easy and fast")
            }
            LogoButton(showIcon: $showIcon)
        }
        .frame(width: 310)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
