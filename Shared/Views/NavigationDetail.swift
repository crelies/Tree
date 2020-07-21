//
//  NavigationDetail.swift
//  Tree
//
//  Created by Christian Elies on 21.07.20.
//

import SwiftUI

struct NavigationDetail: View {
    let item: Item

    var body: some View {
        Text(item.name)
            .padding()
            .navigationTitle(item.name)
    }
}

struct NavigationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetail(item: .file(name: "crelies.swift"))
    }
}
