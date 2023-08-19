//
//  BananaView.swift
//  SwiftUICoordinator
//
//  Created by Alex Nagy on 29.01.2023.
//

import SwiftUI

struct BananaView: View {
    @EnvironmentObject private var coordinator: BaseCoordinator
    @EnvironmentObject private var sheetCoordinator: SheetCoordinator
    @EnvironmentObject private var fullScreenCoverCoordiantor: FullScreenCoordinator
    
    var body: some View {
        List {
            Button("Push 🥕") {
                coordinator.push(.carrot)
            }
            Button("Pop") {
                coordinator.pop()
            }
        }
        .navigationTitle("🍌")
    }
}

struct BananaView_Previews: PreviewProvider {
    static var previews: some View {
        BananaView()
    }
}
