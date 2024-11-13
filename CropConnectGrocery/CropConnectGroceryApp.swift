//
//  CropConnectGroceryApp.swift
//  CropConnectGrocery
//
//  Created by MAYANK SINGH on 01/11/24.
//

import SwiftUI

@main
struct CropConnectGroceryApp: App {
    @StateObject var mainVM = MainViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            
            NavigationView {
                
                if mainVM.isUserLogin {
                    MainTabView()
                }else{
                    WelcomeView()
                }
            }
            
        }
    }
}
