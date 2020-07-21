//
//  ItemStore.swift
//  Tree
//
//  Created by Christian Elies on 21.07.20.
//

import Combine

final class ItemStore: ObservableObject {
    @Published private(set) var items: [Item]

    init(items: [Item]) {
        self.items = items
    }
}

extension ItemStore {
    static func mock() -> ItemStore {
        let mockItems: [Item] = [
            .directory(name: "Sources", items: [
                .directory(name: "API", items: [
                    .directory(name: "Atoms", items: [
                        .directory(name: "Buttons", items: [
                            .file(name: "SliderButton.swift")
                        ])
                    ]),
                    .directory(name: "Molecules", items: [])
                ]),
                .directory(name: "internal", items: [
                    .file(name: "DefaultTheme.swift")
                ])
            ])
        ]
        return ItemStore(items: mockItems)
    }
}
