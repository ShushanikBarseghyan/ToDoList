//
//  NoItemsView.swift
//  ToDoList
//
//  Created by Shushan Barseghyan on 05.01.24.
//

import SwiftUI

struct NoItemsView: View {
  @State var animate: Bool = false
  
  var body: some View {
    ScrollView {
      VStack(spacing: 10) {
        Text("There are no items yet")
          .font(.title)
          .fontWeight(.semibold)
        Text("Click the Add Items button to add items to your to do list")
          .padding(.bottom, 20)
        NavigationLink(destination: AddView()) {
          Text("Add Items")
            .foregroundStyle(Color.white)
            .font(.headline)
            .padding(.horizontal)
            .padding(.horizontal)
            .frame(height: 55)
            .background(animate ? Color.cyan : Color.purple)
            .cornerRadius(10)
        }
        .padding(.horizontal, animate ? 50 : 70)
        .shadow(color: animate ? Color.cyan.opacity(0.5) : Color.purple.opacity(0.5),
                radius: animate ? 20 : 10 )
        .scaleEffect(animate ? 1.1 : 1.0 )
        .offset(y: animate ? -5 : 0)
      }
      .multilineTextAlignment(.center)
      .padding(40)
      .onAppear(perform: addAnimation)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
  
  func addAnimation() {
    guard !animate else { return }
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
      withAnimation(
      Animation
        .easeInOut(duration: 2.0)
        .repeatForever()
      ){
        animate.toggle()
      }
    }
  }
}

#Preview {
  NavigationView {
    NoItemsView()
      .navigationTitle("To Do List")
  }
}
