//
//  TreeApp.swift
//  Shared
//
//  Created by Christian Elies on 21.07.20.
//

import SwiftUI

@main
struct TreeApp: App {
    @StateObject private var itemStore = ItemStore.mock()
    @State private var selectedItem: Item?

    var body: some Scene {
        WindowGroup {
            NavigationView {
                NavigationPrimary(
                    items: itemStore.items,
                    selection: $selectedItem
                )
                .frame(minWidth: 250, minHeight: 700)

                #if os(macOS)
                if let selectedItem = selectedItem, case Item.file = selectedItem {
                    NavigationDetail(item: selectedItem)
                        .frame(minWidth: 400)
                }
                #endif
            }
        }
    }
}
