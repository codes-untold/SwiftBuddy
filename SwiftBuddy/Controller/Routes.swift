//
//  Routes.swift
//  SwiftBuddy
//
//  Created by Osamudiame Ogedegbe on 01/08/2022.
//

import Foundation

class Routes:ObservableObject {
    
    @Published var selectedRootView:RootView = RootView.SplashScreen
    
   
    
}

final class AppState : ObservableObject {
    @Published var rootViewId = UUID()
}


enum RootView {
    case SplashScreen,OnboardingLander
}
