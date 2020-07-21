//
//  NavigationPrimary.swift
//  Tree
//
//  Created by Christian Elies on 21.07.20.
//

import SwiftUI

struct NavigationPrimary: View {
    let items: [Item]
    @Binding var selection: Item?

    var body: some View {
        List(items, id: \.self, children: \.children, selection: $selection) { item in
            if case Item.file = item {
                #if os(macOS)
                Text(item.name)
                #else
                NavigationLink(destination: Text(item.name)) {
                    Text(item.name)
                }
                #endif
            } else {
                Text(item.name)
            }
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("Items")
    }
}

struct NavigationPrimary_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPrimary(items: [], selection: .constant(nil))
    }
}
