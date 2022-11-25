//
//  CoordinatorView.swift
//  TCACoordinators_Test
//
//  Created by MarkCloud on 2022/11/23.
//

import ComposableArchitecture
import SwiftUI
import TCACoordinators

public struct CoordinatorView: View {
    let store: Store<CoordinatorState, CoordinatorAction>
    
    public var body: some View {
        TCARouter(store) { screen in
            SwitchStore(screen) {
                CaseLet(
                    state: /ScreenState.home,
                    action: ScreenAction.home,
                    then: HomeView.init
                )
                CaseLet(
                    state: /ScreenState.detail,
                    action: ScreenAction.detail,
                    then: DetailView.init
                )
            }
        }
    }
}
