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
    var hasError:Bool
    
    var body: some View {
        HStack (alignment: .top){
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
                    .foregroundColor(hasError ? Color(hex: "ff0000")
                                        :Color(hex: "a2a6aa"))
                hasError ? AnyView(_fromValue: HStack {
                    Text("Field is required")
                                        .foregroundColor(Color(hex: "ff0000"))
                                        .font(.system(size: 15, weight: .light, design: .default))
                        .padding(0.0)
                    Spacer()
                }):AnyView(EmptyView())
                   
                
                
            }
        }
    }
}
