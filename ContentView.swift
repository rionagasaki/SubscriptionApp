//
//  ContentView.swift
//  SNS
//
//  Created by Rio Nagasaki on 2022/09/04.
//

import SwiftUI
import CoreData
import Combine


struct ContentView: View {
    
    init(){
        setupTab()
        setupNav()
    }
    var body: some View {
        TabView{
            HomeView().tabItem {
                VStack{
                    Image(systemName: "house")
                    Text("ホーム")
                }
            }.tag(1)
            MyCollectionView().tabItem {
                VStack{
                    Image(systemName: "house")
                    Text("サブスク")
                }
            }.tag(2)
            SearchView().tabItem {
                VStack{
                    Image(systemName: "magnifyingglass")
                    Text("探す")
                }
            }.tag(3)
            ProfileView().tabItem {
                VStack{
                    Image(systemName: "person")
                    Text("マイページ")
                }
            }.tag(4)
        }.accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}


extension ContentView {
    func setupTab(){
        UITabBar.appearance().barTintColor = UIColor(displayP3Red: 40/255, green: 42/255, blue: 51/255, alpha: 1)
            UITabBar.appearance().layer.borderColor = UIColor(displayP3Red: 45/255, green: 58/255, blue: 51/255, alpha: 1).cgColor
    }
    
    func setupNav(){
        UINavigationBar.appearance().barTintColor = UIColor.blue
    }
}
