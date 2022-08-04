//
//  SignUp.swift
//  SwiftBuddy
//
//  Created by Osamudiame Ogedegbe on 02/08/2022.
//

import SwiftUI
    
    



struct SignUp: View {
    
    @State var emailController = ""
    
    var body: some View {
      
        ScrollView {
            VStack{
                Group{
                    Image("sign_up_img").resizable()
                        .scaledToFit()
                    Spacer().frame(height:20)
                    HStack {
                        Text("Sign up")
                          //  .fontWeight(.bold)
                            .font(.system(size: 35, weight: .heavy, design: .default))
                            .multilineTextAlignment(.center)
                        Spacer()
                    }

                    Spacer().frame(height:50)
                    CustomTextfield(textController: $emailController,
                                    icon:"person", label: "Username"
                    )
                    Spacer().frame(height:30)
                    CustomTextfield(textController: $emailController,
                                    icon:"mail.stack", label: "Email"
                    )
                    Spacer().frame(height:30)
                    CustomTextfield(textController: $emailController,
                                    icon:"phone", label: "Phone"
                    )
                   
                }
               
                Spacer().frame(height:30)
                CustomTextfield(textController: $emailController,
                                icon:"key", label: "Password"
                )
                Spacer().frame(height:30)
                HStack {
                    Text("By Signing Up, you have access to SwiftBuddy's components and code implementations")
                        .foregroundColor(Color(hex: "a2a6aa"))
                        .font(.system(size: 15, weight: .light, design: .default))
                        .kerning(1)
                    Spacer()
                }
                Spacer().frame(height:50)
                Button("Continue") {
                  // some code
                }
                .frame(maxWidth:.infinity,
                       maxHeight: 50)
               
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.white)
                .shadow(radius: 10 )
                .background(Color(hex: "0f65ff"))
                .cornerRadius(10)
                
                Spacer().frame(height:30)
                HStack{
                    Text("Joined us before?")
                        .foregroundColor(Color(hex: "a2a6aa"))
                        .font(.system(size: 15, weight: .light, design: .default))
                }
               
                
                
                
                
                
                
                Spacer()

            }.padding(20)
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
