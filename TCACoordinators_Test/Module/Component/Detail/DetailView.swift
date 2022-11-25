//
//  DetailView.swift
//  TCACoordinators_Test
//
//  Created by MarkCloud on 2022/11/23.
//

import SwiftUI
import ComposableArchitecture

public struct DetailView: View {
    var store: Store<DetailState, DetailAction>
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            Text("\(viewStore.title)")
            Button(
                action: { ViewStore(store).send(.backButtonTapped) },
                label: { Text("Go back to list view") }
            )
        }
        .navigationBarHidden(true)
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
