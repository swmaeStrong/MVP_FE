//
//  MainTabReducer.swift
//  SwMaeStrong
//
//  Created by 김정원 on 5/16/25.
//

import Foundation
import ComposableArchitecture

@Reducer
struct MainTabReducer {
    @ObservableState
    struct State {
        var selectedTab: Tab = .home
        
        var home = HomeReducer.State()
        var dashboard = DashboardReducer.State()
        var analysis = AnalysisReducer.State()
        
        enum Tab: Hashable {
            case home
            case dashboard
            case analysis
        }
    }
    
    enum Action {
        case selectTab(State.Tab)
        case home(HomeReducer.Action)
        case dashboard(DashboardReducer.Action)
        case analysis(AnalysisReducer.Action)
    }
    
    var body: some ReducerOf<Self> {
        Scope(state: \.home, action: \.home) {
            HomeReducer()
        }
        
        Scope(state: \.dashboard, action: \.dashboard) {
            DashboardReducer()
        }
        
        Scope(state: \.analysis, action: \.analysis) {
            AnalysisReducer()
        }
        
        Reduce { state, action in
            switch action {
            case .selectTab(let tab):
                state.selectedTab = tab
                return .none
            case .home, .dashboard, .analysis:
                return .none
            }
        }
    }
    
}
