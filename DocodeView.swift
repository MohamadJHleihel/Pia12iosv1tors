//
//  DocodeView.swift
//  Pia12iosv1tors
//
//  Created by Mohamad Hleihel on 2023-11-09.
//

import SwiftUI

struct DocodeView: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                displaytext()
                
            }, label: {
                Text("Tryck här")
            })
        }
    }
    
    
    func displaytext(){
        
    }
}

#Preview {
    DocodeView()
}
