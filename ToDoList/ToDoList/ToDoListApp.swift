//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Shushan Barseghyan on 04.01.24.
//

import SwiftUI



@main
struct ToDoListApp: App {
  @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
          NavigationView {
            ListView()
          }
          .navigationViewStyle(StackNavigationViewStyle())
          .environmentObject(listViewModel)
        }
    }
}
