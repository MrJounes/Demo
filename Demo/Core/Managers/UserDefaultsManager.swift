//
//  UserDefaultsManager.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

import Foundation

protocol DefaultsManagerable {
    func save(_ value: Any, for key: DefaultsKey)
    func fetchObject<T>(type: T.Type, for key: DefaultsKey) -> T?
    func delete(for key: DefaultsKey)
}

final class DefaultsManager {
    
    private let defaults = UserDefaults.standard
}

extension DefaultsManager: DefaultsManagerable {
    
    func save(_ value: Any, for key: DefaultsKey) {
        defaults.set(value, forKey: key.rawValue)
    }
    
    func fetchObject<T>(type: T.Type, for key: DefaultsKey) -> T? {
        return defaults.object(forKey: key.rawValue) as? T
    }
    
    func delete(for key: DefaultsKey) {
        defaults.removeObject(forKey: key.rawValue)
    }
}

enum DefaultsKey: String {
    case isUserAuth
}

