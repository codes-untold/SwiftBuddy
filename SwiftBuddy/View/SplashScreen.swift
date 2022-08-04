//
//  SplashScreen.swift
//  SwiftBuddy
//
//  Created by Osamudiame Ogedegbe on 01/08/2022.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack{
            Color(hex: "0f65ff")
         
            Image("swift_buddy_logo").resizable()
                .scaledToFit()
                .frame(width: 450.0, height: 450.0)
            
            /*.frame(width: 500.0, height: 500.0).background(
                LinearGradient(gradient:  Gradient(colors: [
                    Color.blue,
                    Color.pink,
                    Color.yellow
                ]),
                                      startPoint: .top,
                endPoint: .center))*/
            
        }.onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
         
            }
        }.edgesIgnoringSafeArea(.all)
        
      
            
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

