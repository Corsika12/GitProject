//
//  ContentView.swift
//  Hello
//
//  Created by M on 20/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    // @State
    // @Binding

    @State var name: String = "Adeline"
    
    @State var onTap = false
    
    var body: some View {
        
            VStack {
                Spacer()
                Text("Bonjour \(name)")
                    .font(.title)
                    .fontWeight(.medium)
                Spacer()
                
                // Affichage de la modale
                
                
                Button {
                    onTap = true
                } label: {
                    Text("Changer le prénom")
                        .foregroundColor(Color.white)
                }
                .sheet(isPresented: $onTap, content: {
                    modale1(firstName: $name)
                })
                .padding()
                .background(Color.green)
                .cornerRadius(10)
            }
            .padding()
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
