//
//  BasicToDOApp.swift
//  BasicToDO
//
//  Created by mehmet karanlık on 20.12.2021.
//

import SwiftUI

@main
struct BasicToDOApp: App {
    @AppStorage("isOnbarding") var isOnboarding : Bool = true;
    var body: some Scene {
        WindowGroup {
        StartView()
        }
    }
}
