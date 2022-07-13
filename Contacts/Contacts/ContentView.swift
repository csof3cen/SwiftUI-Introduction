//
//  ContentView.swift
//  Contacts
//
//  Created by S. Moustapha Sy Ndoye on 12/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List (contacts){ contact in
                NavigationLink(destination: DetailView(contact: contact)) {
                    ContactRow(contact: contact)
                }
            }
            .navigationBarTitle("Contacts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
