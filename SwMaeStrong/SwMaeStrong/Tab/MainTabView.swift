//
//  MainTabView.swift
//  SwMaeStrong
//
//  Created by 김정원 on 5/16/25.
//

import SwiftUI
import ComposableArchitecture

struct MainTabView: View {
    let store: StoreOf<MainTabReducer>
    
    var body: some View {
        TabView {
            HomeView(store: store.scope(state: \.home, action: \.home))
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(MainTabReducer.State.Tab.home)
            DashboardView(store: store.scope(state: \.dashboard, action: \.dashboard))
                .tabItem {
                    Label("Dashboard", systemImage: "chart.bar")
                }
                .tag(MainTabReducer.State.Tab.dashboard)
            
            AnalysisView(store: store.scope(state: \.analysis, action: \.analysis))
                .tabItem {
                    Label("Analyze", systemImage: "magnifyingglass")
                }
                .tag(MainTabReducer.State.Tab.analysis)
        }
    }
}

#Preview {
    MainTabView(
        store: Store(initialState: MainTabReducer.State()){
            MainTabReducer()
        }
    )
}
