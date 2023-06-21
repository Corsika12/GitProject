//
//  modale1.swift
//  Hello
//
//  Created by M on 20/06/2023.
//

import SwiftUI

struct modale1: View {
    
    @Binding var firstName: String
    
    var body: some View {
        
        VStack {
            
            Image("x.circle")
                .background(Color.black)
            
            Text("Entrer un nouveau prénom")
            Text("\(firstName)")
            TextField("Saisir votre prénom", text: $firstName)
            
            Spacer()
            Button {
                // Action close Modal
                // dismiss()
            } label: {
                Text("Valider")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
            
            
        }
    }
}

struct modale1_Previews: PreviewProvider {
    static var previews: some View {
        modale1(firstName: .constant("Julien"))
    }
}
