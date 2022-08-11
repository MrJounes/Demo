//
//  UserService.swift
//  Demo
//
//  Created by Игорь Дикань on 11.08.2022.
//

protocol UserServiceable {
    func isUserAuth() -> Bool
    func registerUser()
    func logout()
}

final class UserService {
    
    private let defaultsManager: DefaultsManagerable
    
    init(defaultsManager: DefaultsManagerable) {
        self.defaultsManager = defaultsManager
    }
}

extension UserService: UserServiceable {
    
    func isUserAuth() -> Bool {
        defaultsManager.fetchObject(type: Bool.self, for: .isUserAuth) ?? false
    }
    
    func registerUser() {
        defaultsManager.save(true, for: .isUserAuth)
    }
    
    func logout() {
        defaultsManager.delete(for: .isUserAuth)
    }
}
