//
//  CustomTextField.swift
//  SwiftBuddy
//
//  Created by Osamudiame Ogedegbe on 04/08/2022.
//

import SwiftUI


struct CustomTextfield: View {
    
    @Binding var textController:String
    var icon:String
    var label:String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(Color(hex: "a2a6aa"))
            Spacer().frame(width:30)
            VStack {
                TextField(label, text: $textController)
                    .onChange(of: textController, perform: { value in
                        print(value)
                    })
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color(hex: "a2a6aa"))
                
            }
        }
    }
}
