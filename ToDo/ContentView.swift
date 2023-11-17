//
//  ContentView.swift
//  ToDo
//
//  Created by Oscar Byhlinder on 2023-11-17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var newListItem: String = ""
    
    @State private var listItems: [String] = []
    
    var body: some View {
        
        VStack {
            
            HStack {
                TextField("Skriv din listpunkt här", text: $newListItem)
                
                Button(action: {
                    if(newListItem != "") {
                        listItems.append(newListItem)
                        newListItem = ""
                    }
                }) {
                    Text("Lägg till")
                }
                
                
            }.padding(.all)
            
            List(listItems, id: \.self) { listItem in
                HStack {
                    ListRowView(listItems: listItem)
                }
            }
            .overlay(Group {
                if listItems.isEmpty {
                    Text("Listan är tom")
                        .foregroundColor(.gray)
                }
            })
            
            
            Spacer()
            
            if !listItems.isEmpty {
                Button(action: {
                    listItems.removeAll()
                }) {
                    Text("Töm lista")
                        .foregroundColor(.red)
                        .padding(.all)
                }
            }
            
        }
        
    } // END BODY
    
} // END ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
