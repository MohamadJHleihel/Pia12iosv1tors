//
//  ContentView.swift
//  Pia12iosv1tors
//
//  Created by Mohamad Hleihel on 2023-11-08.
//

import SwiftUI

struct ContentView: View {
    
    @State var resultnumber = 0
  
    
    @State var inputnumber = ""
    
    
    var body: some View {
        VStack {
            Text(String(resultnumber))
                .font(.largeTitle)
            
            TextField("Skriv Siffra", text: $inputnumber)
            
            Button(action: {
                //if Int(inputnumber) != nil {
                //  resultnumber = resultnumber + Int(inputnumber)!
                //}
                docalc(howcount: "Plus")
                
            }, label: {
                Text("Plus")
            })
            
            
            Button(action: {
                docalc(howcount: "Minus")
                
            } , label: {
                Text("Minus")
            })
            
            Button(action: {
                doprocent()
            } , label: {
                Text("procent")
            })
            Spacer()
            
            Button(action: {
                resultnumber = 0
            }, label: {
                Text("Reset")
            })
        }
        .padding()
    }
    func docalc(howcount : String){
        
        let massasiffror = ["noll" , "ett" , "två" , "tre" , "fyra" , "fem" , "sex" , "sju" , "åtta" , "nio" , "tio"]
        
        if let wherenumber =
            massasiffror.firstIndex(where: { $0 == inputnumber.lowercased()}) {
            
            if howcount == "Plus"{
                
                resultnumber = resultnumber + wherenumber
               
            }
            
            
            if howcount == "Minus"{
                resultnumber = resultnumber - wherenumber
            }
 
            
        }
        
        
        /* var textnumber = 0
         if inputnumber.lowercased() == "ett" {
         textnumber = 1
         }
         if inputnumber.lowercased() == "två"{
         textnumber = 2
         }
         if inputnumber.lowercased() == "tre"{
         textnumber = 3
         }
         */
        
        else if howcount == "Plus"{
            
            if let fancynumber = Int(inputnumber){
                resultnumber = resultnumber + fancynumber
            }
        }
        
         else if howcount == "Minus"{
            
            if let fancynumber = Int(inputnumber){
                resultnumber = resultnumber - fancynumber
            }
        }
    }
    func doprocent () {
        if let procentnumber = Int(inputnumber){
            resultnumber = resultnumber * procentnumber / 100
        }
    }
}

#Preview {
    ContentView()
}
