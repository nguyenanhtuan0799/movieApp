//
//  EntryPointApp.swift
//  MovieApp
//
//  Created by Nguyễn Anh Tuấn on 11/4/25.
//

import Foundation
import SwiftUI

struct EntryPointApp:View{
    
    var body:some View{
        TabView{
            HomeScreen()
                .tabItem{
                    Label("Home",systemImage: "house")
                }.tag(0)
            MyStoreScreen()
                .tabItem{
                    Label("My Store",systemImage: "star")
                }.tag(1)
            AccountScreen()
                .tabItem{
                    Label("Account",systemImage: "person")
                }.tag(1)
        }
    }
}
