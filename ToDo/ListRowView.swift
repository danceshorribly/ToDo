//
//  PersonRowView.swift
//  Utbildningsappen
//
//  Created by Oscar Byhlinder on 2023-11-17.
//

import SwiftUI

struct ListRowView: View {
    
    var listItems = "XYZ"
    
    var body: some View {
        
        Text(listItems)
            .padding(.all)
            .foregroundColor(.blue)
        
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView()
    }
}
