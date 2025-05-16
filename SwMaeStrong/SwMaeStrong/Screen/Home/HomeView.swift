//
//  HomeView.swift
//  SwMaeStrong
//
//  Created by 김정원 on 5/16/25.
//

import SwiftUI
import ComposableArchitecture

struct HomeView: View {
    let store: StoreOf<HomeReducer>
    
    var body: some View {
        Text(store.title)
    }
}

#Preview {
    HomeView(store: Store(initialState: HomeReducer.State()){
        HomeReducer()
    })
}
