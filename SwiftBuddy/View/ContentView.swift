//
//  ContentView.swift
//  SwiftBuddy
//
//  Created by Osamudiame Ogedegbe on 01/08/2022.
//

import SwiftUI

struct ContentView: View {
    
   
    @ObservedObject var controller = Routes()
    var body: some View {
        
      /*  if controller.selectedRootView == RootView.SplashScreen{
            SplashScreen()
        }
        else{*/
            OnboardingLander()
       // }
       
            
      /*  NavigationView{
            VStack{
                SplashScreen()
                NavigationLink(
                    destination: OnboardingLander()
                        .navigationBarBackButtonHidden(true)
                        .statusBar(hidden: true),
                    isActive: $isShowingOnboardingLander)
                {
                     EmptyView()
                }
            }
        }
        
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
         isShowingOnboardingLander = true
            }
        }*/
        //OnboardingLander()
       // SplashScreen()
       
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
