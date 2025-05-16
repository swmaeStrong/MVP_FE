//
//  SwMaeStrongApp.swift
//  SwMaeStrong
//
//  Created by 김정원 on 5/16/25.
//

import SwiftUI
import ComposableArchitecture

@main
struct SwMaeStrongApp: App {
    static let store = Store(initialState: MainTabReducer.State()) {
        MainTabReducer()
    }
    
    var body: some Scene {
        WindowGroup {
            MainTabView(store: SwMaeStrongApp.store)
        }
    }
}
