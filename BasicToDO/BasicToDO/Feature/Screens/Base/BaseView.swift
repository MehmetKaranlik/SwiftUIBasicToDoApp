//
//  BaseView.swift
//  BasicToDO
//
//  Created by mehmet karanlık on 21.12.2021.
//

import SwiftUI

struct BaseView: View {
    @State var selectedIndex : Int = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            HomeView()
                .tabItem {
                    Text("Home")
                }.tag(0)
            HomeView()
                .tabItem {
                    Text("Home")
                }.tag(1)
        }
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
