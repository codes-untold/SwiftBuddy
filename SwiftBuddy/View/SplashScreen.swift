//
//  SplashScreen.swift
//  SwiftBuddy
//
//  Created by Osamudiame Ogedegbe on 01/08/2022.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive = false
    
    
    var body: some View {
         
        if isActive{
            ContentView()
        }
        else{
            VStack{
               ZStack{
                   Color(hex: "0f65ff")
                   Image("swift_buddy_logo").resizable()
                       .scaledToFit()
                       .frame(width: 450.0, height: 450.0)
                  
               }.onAppear(){
                  
                   DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                       isActive = true
                   }
               }.edgesIgnoringSafeArea(.all)
               
              /*  NavigationLink(
                    destination: OnboardingLander(),
                    //    .navigationBarBackButtonHidden(true)
                        //.statusBar(hidden: true),
                    isActive: $isShowingOnboardingLander)
                {
                     EmptyView()
                }*/
            }
        }
           
        
         
      
      
            
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

