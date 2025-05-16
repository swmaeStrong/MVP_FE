//
//  HomeReducer.swift
//  SwMaeStrong
//
//  Created by 김정원 on 5/16/25.
//

import Foundation
import ComposableArchitecture

@Reducer
struct HomeReducer {

    @ObservableState
    struct State {
        var title = "Home"
    }
    
    enum Action {
        case initialize
    }
    
}



