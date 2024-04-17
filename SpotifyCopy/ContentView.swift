//
//  ContentView.swift
//  SpotifyCopy
//
//  Created by Vladyslav Mi on 16.04.2024.
//

import SwiftUI
import SwiftfulRouting
import SwiftfulUI

struct ContentView: View {
    
    @State private var users : [User] = []
    @State private var products : [Product] = []
    
    var body: some View {
        ScrollView{
            VStack {
                ForEach(products) { product in
                    Text(product.title ?? "")
                }
            }
        }
        .padding()
        .task {
            await getData()
        }
    }
    
    private func getData() async {
        do {
            users = try await DataBaseHelper().getUsers()
            products = try await DataBaseHelper().getProducts()
        } catch {
            
        }
    }
}

#Preview {
    ContentView()
}
