//
//  DashboardView.swift
//  SwMaeStrong
//
//  Created by 김정원 on 5/16/25.
//

import SwiftUI
import ComposableArchitecture

struct DashboardView: View {
    let store: StoreOf<DashboardReducer>

    var body: some View {
        Text(store.title)
    }
}

#Preview {
    DashboardView(store: Store(initialState: DashboardReducer.State()){
        DashboardReducer()
    })
}
