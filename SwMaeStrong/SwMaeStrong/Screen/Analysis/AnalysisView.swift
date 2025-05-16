//
//  AnalyzeView.swift
//  SwMaeStrong
//
//  Created by 김정원 on 5/16/25.
//

import SwiftUI
import ComposableArchitecture

struct AnalysisView: View {
    let store: StoreOf<AnalysisReducer>

    var body: some View {
        Text(store.title)
    }
}

#Preview {
    AnalysisView(store: Store(initialState: AnalysisReducer.State()){
        AnalysisReducer()
    })
}
