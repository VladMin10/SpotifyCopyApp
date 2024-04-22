//
//  User.swift
//  SpotifyCopy
//
//  Created by Vladyslav Mi on 16.04.2024.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

// MARK: - User
struct User: Codable, Identifiable{
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Int
    let weight: Double
    
    static var mock : User {
        User(
            id: 444,
            firstName: "Vladyslav",
            lastName: "Minialo",
            age: 20,
            email: "fafaf@gmail.com",
            phone: "",
            username: "",
            password: "",
            image: Constants.randomImage,
            height: 100,
            weight: 200
        )
    }
}
