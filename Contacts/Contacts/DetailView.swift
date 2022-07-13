//
//  DetailView.swift
//  Contacts
//
//  Created by S. Moustapha Sy Ndoye on 13/07/2022.
//

import SwiftUI

struct DetailView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            Text(contact.name)
                .font(.title)
                .fontWeight(.medium)
            Form {
                Section{
                    HStack{
                        Text("Phone")
                        Spacer()
                        Text(contact.phone)
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    HStack{
                        Text("Email")
                        Spacer()
                        Text(contact.email)
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                    HStack{
                        Text("Address")
                        Spacer()
                        Text(contact.address)
                            .font(.callout)
                            .foregroundColor(.gray)
                    }
                }
                Section{
                    Button(action: {}){
                        Text("Send Message")
                    }
                    Button(action: {}){
                        Text("Call")
                    }
                }
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: contacts[0])
    }
}
