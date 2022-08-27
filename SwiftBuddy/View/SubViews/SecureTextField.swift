//
//  SecureTextField.swift
//  SwiftBuddy
//
//  Created by Osamudiame Ogedegbe on 06/08/2022.
//

import SwiftUI

struct SecureTextField: View {
    @Binding private var text: String
       @State private var isSecured: Bool = true
       private var title: String
        private var hasError: Bool
       
    init(_ title: String, text: Binding<String>,hasError: Bool) {
           self.title = title
           self._text = text
        self.hasError = hasError
       }
       
       var body: some View {
       
            HStack {
                Image(systemName: "key")
                    .foregroundColor(Color(hex: "a2a6aa"))
                Spacer().frame(width:30)
                VStack {
                    ZStack(alignment: .trailing) {
                           Group {
                               if isSecured {
                                   SecureField(title, text: $text)
                               } else {
                                   TextField(title, text: $text)
                               }
                           }.padding(.trailing, 32)

                           Button(action: {
                               isSecured.toggle()
                           }) {
                               Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                   .accentColor(.gray)
                           }
                    }
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(hasError ? Color(hex: "ff0000") :Color(hex: "a2a6aa"))
                }
            }
            
     
       }
}

