//
//  HomeCore.swift
//  TCACoordinators_Test
//
//  Created by MarkCloud on 2022/11/23.
//

import ComposableArchitecture

public struct HomeState: Equatable {
    public var nums: [Int]
    
    public init(nums: [Int] = Array(1...10)) {
        self.nums = nums
    }
}

public enum HomeAction {
    case itemTapped(Int)
}

public struct HomeEnvironment {
}

public let homeReducer = Reducer<HomeState, HomeAction, HomeEnvironment> { state, action, env in
    switch action {
    case let .itemTapped(num):
        return .none
    }
}
