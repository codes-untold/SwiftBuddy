//
//  SignIn.swift
//  SwiftBuddy
//
//  Created by Osamudiame Ogedegbe on 02/08/2022.
//

import SwiftUI

struct SignIn: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isResetScreenOpen = false
    @State private var isSignUpScreenOpen = false
    @State private var emailFieldHasError:Bool = false
    @State private var passwordFieldHasError:Bool = false
    
    
    
    var body: some View {
        VStack{
            Group{
                VStack{
                    Group{
                        Image("login_img").resizable()
                            .scaledToFit().frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Spacer().frame(height:20)
                        HStack {
                            Text("Login")
                              //  .fontWeight(.bold)
                                .font(.system(size: 35, weight: .heavy, design: .default))
                                .multilineTextAlignment(.center)
                            Spacer()
                        }
                        Spacer().frame(height:30)
                        CustomTextfield(textController: $email,
                                        icon:"mail.stack", label: "Email",
                                        hasError: emailFieldHasError
                        )
                        Spacer().frame(height:30)
                        NavigationLink(
                            destination: ResetPassword()
                                .statusBar(hidden: true)
                                .navigationBarHidden(true),
                             
                            isActive: $isResetScreenOpen)
                        {
                             EmptyView()
                        }
                        NavigationLink(
                            destination: SignUp()
                                .statusBar(hidden: true)
                                .navigationBarHidden(true),
                             
                            isActive: $isSignUpScreenOpen)
                        {
                             EmptyView()
                        }
                    }
                    SecureTextField("Password", text: $password,hasError: passwordFieldHasError)
                    Spacer().frame(height:30)
                    HStack{
                        Spacer()
                        Text("Forgot Password?")
                            .foregroundColor(Color(hex: "0f65ff"))
                            .font(.system(size: 15, weight: .light, design: .default))
                            .onTapGesture {
                                isResetScreenOpen = true
                            }
                    }
                    Spacer().frame(height:40)
                }
            }
            
            Button("Log In") {
              isSignUpScreenOpen = true
            }
            .frame(maxWidth:.infinity,
                   maxHeight: 50)
           
            .font(.system(size: 22, weight: .bold))
            .foregroundColor(.white)
            .shadow(radius: 10 )
            .background(Color(hex: "0f65ff"))
            .cornerRadius(10)
            Spacer()
            HStack{
                Text("New to SwiftBuddy?")
                    .foregroundColor(Color(hex: "a2a6aa"))
                    .font(.system(size: 15, weight: .light, design: .default))
                Text("Register")
                    .foregroundColor(Color(hex: "0f65ff"))
                    .font(.system(size: 15, weight: .light, design: .default))
                    .onTapGesture {
                        isSignUpScreenOpen = true
                    }
        
            }
           
            
        }.padding(20)
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
