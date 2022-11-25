//
//  IndexedRouter.swift
//  TCACoordinators_Test
//
//  Created by MarkCloud on 2022/11/23.
//

import Foundation
import FlowStacks

public protocol IndexedRouterState {
    associatedtype Screen
    
    var routes: [Route<Screen>] { get set }
}

public protocol IndexedRouterAction {
    
    associatedtype Screen
    associatedtype ScreenAction
    
    /// Creates an action that allows routes to be updated whenever the user navigates back.
    /// - Returns: An `IndexedScreenCoordinatorAction`, usually a case in an enum.
    static func updateRoutes(_ screens: [Route<Screen>]) -> Self
    
    /// Creates an action that allows the action for a specific screen to be dispatched to that screen's reducer.
    /// - Returns: An `IndexedScreenCoordinatorAction`, usually a case in an enum.
    static func routeAction(_ index: Int, action: ScreenAction) -> Self
}
