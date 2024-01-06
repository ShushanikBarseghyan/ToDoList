//
//  ListView.swift
//  ToDoList
//
//  Created by Shushan Barseghyan on 04.01.24.
//

import SwiftUI

struct ListView: View {
  
  @EnvironmentObject var listViewModel: ListViewModel
  
  var body: some View {
    ZStack {
      if listViewModel.items.isEmpty {
        NoItemsView()
      } else {
        List {
          ForEach(listViewModel.items) { item in
            ListRowView(item: item)
              .onTapGesture {
                withAnimation(.linear) {
                  listViewModel.updateItem(item: item)
                }
              }
          }
          .onDelete(perform: listViewModel.deleteItem)
          .onMove(perform: listViewModel.moveItem)
        }
        .listStyle(.plain)
      }
      
    }
    .navigationTitle("To do list")
    .navigationBarItems(leading: EditButton(),
                        trailing:
                          NavigationLink("Add", destination: AddView()))
    
  }
}

#Preview {
  NavigationView {
    ListView()
  }
  .environmentObject(ListViewModel())
}
