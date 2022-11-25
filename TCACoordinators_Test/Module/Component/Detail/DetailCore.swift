//
//  DetailCore.swift
//  TCACoordinators_Test
//
//  Created by MarkCloud on 2022/11/23.
//

import ComposableArchitecture

public struct DetailState: Equatable {
    public var title: Int
    
    public init(title: Int) {
        self.title = title
    }
}

public enum DetailAction {
    case backButtonTapped
}

public struct DetailEnvironment {
}

public let detailReducer = Reducer<DetailState, DetailAction, DetailEnvironment> { state, action, env in
    switch action {
    case .backButtonTapped:
        return .none
    }
}
