//
//  AppView.swift
//  TCACoordinators_Test
//
//  Created by MarkCloud on 2022/11/23.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        CoordinatorView(
            store: .init(
                initialState: .init(),
                reducer: coordinatorReducer,
                environment: CoordinatorEnvironment()
            )
        )
    }
}
