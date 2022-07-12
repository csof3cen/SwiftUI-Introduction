//
//  Button.swift
//  LogoButton
//
//  Created by S. Moustapha Sy Ndoye on 12/07/2022.
//

import SwiftUI

struct LogoButton: View {
    
    @Binding var showIcon: Bool
    
    var body: some View {
        Button(action: {self.showIcon.toggle()}) {
            Text("Show me the logo")
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding(.bottom, 130)
    }
}
