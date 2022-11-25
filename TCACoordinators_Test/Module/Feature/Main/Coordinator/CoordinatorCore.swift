//
//  CoordinatorCore.swift
//  TCACoordinators_Test
//
//  Created by MarkCloud on 2022/11/23.
//

import ComposableArchitecture
import TCACoordinators

public struct CoordinatorState: Equatable, IndexedRouterState {
    public var routes: [Route<ScreenState>]
    
    public init(routes: [Route<ScreenState>] = [.root(.home(.init()), embedInNavigationView: true)]) {
        self.routes = routes
    }
}

public enum CoordinatorAction: IndexedRouterAction {
    case routeAction(Int, action: ScreenAction)
    case updateRoutes([Route<ScreenState>])
}

public struct CoordinatorEnvironment {
}

public let coordinatorReducer: AnyReducer<CoordinatorState, CoordinatorAction, CoordinatorEnvironment> = screenReducer
    .forEachIndexedRoute(environment: { _ in ScreenEnvironment() })
    .withRouteReducer(
        Reducer { state, action, environment in
            switch action {
            case let .routeAction(_, action: .home(.itemTapped(num))):
                state.routes.push(.detail(.init(title: num)))
                return .none
                
            case .routeAction(_, action: .detail(.backButtonTapped)):
                state.routes.pop()
                return .none
                
            default:
                return .none
            }
        }
    )
