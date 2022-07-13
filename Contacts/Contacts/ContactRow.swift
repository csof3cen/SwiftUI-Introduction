//
//  ContactRow.swift
//  Contacts
//
//  Created by S. Moustapha Sy Ndoye on 13/07/2022.
//

import SwiftUI

struct ContactRow: View {
    
    let contact: Contact
    
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack (alignment: .leading){
                Text(contact.name)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(contact.phone)
                    .font(.subheadline)
            }
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: contacts[0])
            .previewLayout(.sizeThatFits)
            .cornerRadius(10)
            .padding()
    }
}
