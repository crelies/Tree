//
//  Item.swift
//  Tree
//
//  Created by Christian Elies on 21.07.20.
//

enum Item: Hashable, Equatable {
    case file(name: String)
    case directory(name: String, items: [Item])
}

extension Item {
    var name: String {
        switch self {
        case let .file(name), let .directory(name, _):
            return name
        }
    }

    var children: [Item]? {
        guard case let Item.directory(_, items) = self else {
            return nil
        }
        return items
    }
}
