//
//  ContentView.swift
//  TCACoordinators_Test
//
//  Created by MarkCloud on 2022/11/23.
//

import SwiftUI
import ComposableArchitecture

public struct HomeView: View {
    var store: Store<HomeState, HomeAction>
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            List {
                ForEach(viewStore.nums, id: \.self) { num in
                    Button(
                        action: {
                            ViewStore(store).send(.itemTapped(num))
                        },
                        label: { Text("\(num)") }
                    )
                }
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
