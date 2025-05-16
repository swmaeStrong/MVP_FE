//
//  AnalysisReducer.swift
//  SwMaeStrong
//
//  Created by 김정원 on 5/16/25.
//

import Foundation
import ComposableArchitecture

@Reducer
struct AnalysisReducer {

    @ObservableState
    struct State {
        var title = "Analysis"
    }
    
    enum Action {
        case initialize
    }
}
