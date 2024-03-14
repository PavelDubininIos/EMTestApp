//
//  EMTestAppApp.swift
//  EMTestApp
//
//  Created by Павел Дубинин on 14.03.2024.
//

import SwiftUI

@main
struct EMTestAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}

//MARK: - Tab bar settings
struct ContentView: View {
    var body: some View {
        TabView {
            LoginView()
            .tabItem {
                Label("Поиск", image: "Search")
            }
            
            FavoritesView()
            .tabItem {
                Label("Избранное", image: "Favorites")
            }
            .badge(2)
            
            ResponsesView()
            .tabItem {
                Label("Отклики", image: "Responses")
            }
            
            MessagesView()
            .tabItem {
                Label("Сообщения", image: "Favorites")
            }
            
            ProfileView()
            .tabItem {
                Label("Профиль", image: "Profile")
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
