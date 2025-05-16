//
//  DashboardReducer.swift
//  SwMaeStrong
//
//  Created by 김정원 on 5/16/25.
//

import Foundation
import ComposableArchitecture

@Reducer
struct DashboardReducer {
    
    @ObservableState
    struct State {
        var title = "Dashboard"
    }
    
    enum Action {
        case initialize
    }
}

