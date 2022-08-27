//
//  ResetPassword.swift
//  SwiftBuddy
//
//  Created by Osamudiame Ogedegbe on 06/08/2022.
//

import SwiftUI

struct ResetPassword: View {
    
    @State private var email: String = ""
    @State private var fieldHasError:Bool = false
    
    var body: some View {
        VStack(alignment: .center){
            Group{
                VStack{
                    Image("security").resizable()
                        .scaledToFit().frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer().frame(height:20)
                    HStack {
                        Text("Forgot")
                          //  .fontWeight(.bold)
                            .font(.system(size: 35, weight: .heavy, design: .default))
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    HStack {
                        Text("Password?")
                          //  .fontWeight(.bold)
                            .font(.system(size: 35, weight: .heavy, design: .default))
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    Spacer().frame(height:30)
                   
                      
                }
            }
            HStack {
                Text("Don't worry! it happens. Please enter the address associated with the account")
                    .foregroundColor(Color(hex: "a2a6aa"))
                    .font(.system(size: 15, weight: .light, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
                
                
               // .kerning(1)
        
        Spacer().frame(height:50)
           
            CustomTextfield(textController: $email,
                            icon:"mail.stack", label: "Email",
                            hasError: fieldHasError
            )
            Spacer().frame(maxWidth:.infinity)
            
            Button {
                      print("Image tapped!")
                  } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(hex: "0f65ff"))
                            .frame(maxWidth:.infinity,maxHeight: 50)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Text("Submit")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .bold, design: .default))
                    }
                  }
        
           
        }.padding(20)
    }
}

struct ResetPassword_Previews: PreviewProvider {
    static var previews: some View {
        ResetPassword()
    }
}
